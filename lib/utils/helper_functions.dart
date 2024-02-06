import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HelperFunctions {
  ///clear stack and navigate to a new route
  static void clearStackAndNavigate(BuildContext context, String path) {
    while (GoRouter.of(context).canPop()) {
      GoRouter.of(context).pop();
    }
    GoRouter.of(context).pushReplacement(path);
  }
}
