import 'package:flutter/material.dart';

class NavigationService {
  factory NavigationService() {
    return _singleton;
  }
  static final NavigationService _singleton = NavigationService._singleton;
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
}
