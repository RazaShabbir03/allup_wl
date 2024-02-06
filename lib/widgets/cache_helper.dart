import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static const String _appLocale = 'app_locale';
  static const String _accessToken = 'access_token';

  //save access token
  static Future<void> cacheAccessToken(String token) async {
    await prefs.setString(_accessToken, token);
  }

  //get access token
  static String? getCachedAccessToken() {
    return prefs.getString(_accessToken);
  }

  static String getCachedLanguage() {
    final code = prefs.getString(_appLocale);
    if (code != null) {
      return code;
    } else {
      return 'en';
    }
  }

  static Future<void> cacheLanguage(String code) async {
    await prefs.setString(_appLocale, code);
  }

  //function to clear all the cache
  static Future<void> clearCache() async {
    await prefs.clear();
  }
}
