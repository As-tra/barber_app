import 'package:barber_app/utils/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrenceHelper {
  static String userIdKey = "USERIDKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";
  static String userImageKey = "USERIMAGEKEY";

  Future<bool> saveUserId({required String id}) async {
    return getIt<SharedPreferences>().setString(userIdKey, id);
  }

  Future<bool> saveUserName({required String name}) async {
    return getIt<SharedPreferences>().setString(userNameKey, name);
  }

  Future<bool> saveUserEmail({required String email}) {
    return getIt<SharedPreferences>().setString(userEmailKey, email);
  }

  Future<bool> saveUserImage({required String image}) {
    return getIt<SharedPreferences>().setString(userImageKey, image);
  }

  String? getUserId() {
    return getIt<SharedPreferences>().getString(userIdKey);
  }
  String? getEmail() {
    return getIt<SharedPreferences>().getString(userEmailKey);
  }
  String? getUserName() {
    return getIt<SharedPreferences>().getString(userNameKey);
  }
  String? getUserImage() {
    return getIt<SharedPreferences>().getString(userImageKey);
  }
}
