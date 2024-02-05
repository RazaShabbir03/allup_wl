import 'dart:ui';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle getMediumHeading({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontVariations: [
        FontVariation('wght', ((fontWeight.index + 1) * 100).toDouble())
      ],
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: 'SFProDisplay',
      color: color,
    );
  }

  static TextStyle getMiddleHeading({
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'SFProDisplay',
      color: color,
    );
  }

  static TextStyle sfProStyle(
      {Color? color = Colors.black,
      double fontSize = 16,
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      fontVariations: [
        FontVariation('wght', ((fontWeight.index + 1) * 100).toDouble())
      ],
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: 'SFProDisplay',
      color: color,
    );
  }

  static TextStyle rubikStyle(
      {Color color = Colors.black,
      double fontSize = 16,
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      fontVariations: [
        FontVariation('wght', ((fontWeight.index + 1) * 100).toDouble())
      ],
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: 'Rubik',
      color: color,
    );
  }

  static TextStyle interStyle(
      {Color color = Colors.black,
      double fontSize = 16,
      double letterSpacing = 0,
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      fontVariations: [
        FontVariation('wght', ((fontWeight.index + 1) * 100).toDouble())
      ],
      fontSize: fontSize,
      fontStyle: FontStyle.normal,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight,
      fontFamily: 'Inter',
      color: color,
    );
  }

  static TextStyle bebasNeue({
    Color color = Colors.black,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      fontVariations: [
        FontVariation('wght', ((fontWeight.index + 1) * 100).toDouble())
      ],
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: 'Bebas Neue',
      color: color,
    );
  }

  static TextStyle roboto({
    Color color = Colors.black,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      fontVariations: [
        FontVariation('wght', ((fontWeight.index + 1) * 100).toDouble())
      ],
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      fontFamily: 'Roboto',
      color: color,
    );
  }
}
