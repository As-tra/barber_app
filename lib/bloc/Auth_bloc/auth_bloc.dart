import 'package:barber_app/services/database.dart';
import 'package:barber_app/services/shared_pref.dart';
import 'package:barber_app/utils/service_locator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_string/random_string.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>(
      (event, emit) async {
        if (event is RegisterEvent) {
          try {
            emit(AuthLoading());
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: event.email,
              password: event.password,
            );
            String id = randomAlphaNumeric(15);
            // save info the shared preferences
            await getIt<SharedPrefrenceHelper>()
                .saveUserEmail(email: event.email);
            await getIt<SharedPrefrenceHelper>()
                .saveUserEmail(email: event.email);
            await getIt<SharedPrefrenceHelper>().saveUserName(name: event.name);
            await getIt<SharedPrefrenceHelper>().saveUserImage(image: '');
            await getIt<SharedPrefrenceHelper>().saveUserId(id: id);
            // register the user info in the firestore

            Map<String, dynamic> userInfo = {
              "name": event.name,
              "email": event.email,
              "id": id,
              "image": "",
            };
            await DatabaseMethods().addUserDetails(userInfo, id);
            emit(RegisterSuccess());
          } on FirebaseAuthException catch (e) {
            emit(RegisterFailure(error: e));
          }
        } else if (event is LoginEvent) {
          try {
            emit(AuthLoading());
            await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: event.email,
              password: event.password,
            );
            emit(LoginSuccess());
          } on FirebaseAuthException catch (e) {
            emit(LoginFailure(error: e));
          }
        } else if (event is AdminLoginEvent) {
          // work here for the loginc of the admin login
          try {
            emit(AuthLoading());
            await FirebaseFirestore.instance.collection('Admin').get().then(
              (snapshot) {
                if (snapshot.docs.first.data()['id'] == event.name.trim() &&
                    snapshot.docs.first.data()['password'] == event.password) {
                  emit(AdminLoginSuccess());
                }
              },
            );
          } on FirebaseAuthException catch (e) {
            emit(AdminLoginFailure(error: e));
          }
        }
      },
    );
  }
}
