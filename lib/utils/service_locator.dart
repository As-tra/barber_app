import 'package:barber_app/services/shared_pref.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() async {
  getIt.registerSingletonAsync<SharedPreferences>(() async {
    return await SharedPreferences.getInstance();
  });
  getIt.registerSingleton<SharedPrefrenceHelper>(
    SharedPrefrenceHelper(),
  );
}
