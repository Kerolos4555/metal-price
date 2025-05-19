import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  static late SharedPreferences sharedPrefs;

  static Future<void> init() async {
    sharedPrefs = await SharedPreferences.getInstance();
  }

  static Future<void> saveAppTheme({required bool isDark}) async {
    await sharedPrefs.setBool('isDark', isDark);
  }

  static bool? getAppTheme() {
    return sharedPrefs.getBool('isDark');
  }
}
