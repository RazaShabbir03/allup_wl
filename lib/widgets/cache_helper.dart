import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static const String _appLocale = 'app_locale';
  static const String _accessToken = 'access_token';
  static const String _gymId = 'gym_id';
  static const String _gymName = 'gym_name';

  //save access token
  static Future<void> cacheAccessToken(String token) async {
    await prefs.setString(_accessToken, token);
  }

  //get access token
  static String? getCachedAccessToken() {
    return prefs.getString(_accessToken);
  }

  //get cache gym id
  static String? getCachedGymId() {
    return prefs.getString(_gymId);
  }

  //save gym id
  static Future<void> cacheGymId(String gymId) async {
    await prefs.setString(_gymId, gymId);
  }

  //get cache gym name
  static String? getCachedGymName() {
    return prefs.getString(_gymName);
  }

  //save gym name
  static Future<void> cacheGymName(String gymName) async {
    await prefs.setString(_gymName, gymName);
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
