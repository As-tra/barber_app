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
    return getIt<SharedPreferences>().setString(userIdKey, name);
  }

  Future<bool> saveUserEmail({required String email}) {
    return getIt<SharedPreferences>().setString(userIdKey, email);
  }

  Future<bool> saveUserImage({required String image}) {
    return getIt<SharedPreferences>().setString(userIdKey, image);
  }
}
