import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RequiredPlusCodeFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isNotEmpty && !newValue.text.startsWith('+')) {
      return TextEditingValue(
        text: '+${newValue.text}',
        selection: TextSelection.collapsed(
          offset: '+${newValue.text}'.length,
        ),
      );
    } else {
      return newValue;
    }
  }
}
