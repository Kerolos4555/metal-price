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

  static Future<void> saveCurrentMetal({required String currentMetal}) async {
    await sharedPrefs.setString('metal', currentMetal);
  }

  static String getCurrentMetal() {
    return sharedPrefs.getString('metal') ?? 'XAU';
  }

  static Future<void> saveCurrentCurrency({
    required String currentCurrency,
  }) async {
    await sharedPrefs.setString('currency', currentCurrency);
  }

  static String getCurrentCurrency() {
    return sharedPrefs.getString('currency') ?? 'USD';
  }
}
