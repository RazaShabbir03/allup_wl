import 'package:flutter/material.dart';

enum Flavor { development, staging, production }

class FlavorValues {
  FlavorValues({
    required this.baseUrl,
  });
  final String baseUrl;
  //Add other flavor specific values, e.g database name
}

class FlavorConfig {
  factory FlavorConfig({
    required Flavor flavor,
    required FlavorValues values,
    required String paymentAuthUrl,
    required String authEndpoint,
    Color? color,
  }) {
    _instance ??= FlavorConfig._internal(flavor, flavor.toString(),
        color ?? Colors.blue, values, paymentAuthUrl, authEndpoint);
    return _instance!;
  }
  FlavorConfig._internal(this.flavor, this.name, this.color, this.values,
      this.paymentAuthUrl, this.authEndpoint);
  final Flavor flavor;
  final String name;
  final Color color;
  final FlavorValues values;
  final String paymentAuthUrl;
  final String authEndpoint;
  static FlavorConfig? _instance;
  static FlavorConfig? get instance {
    return _instance;
  }

  static bool isProduction() => _instance!.flavor == Flavor.production;
  static bool isDevelopment() => _instance!.flavor == Flavor.development;
  static bool isStaging() => _instance!.flavor == Flavor.staging;
}
