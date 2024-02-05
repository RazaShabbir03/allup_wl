import 'package:flutter/material.dart';

class OTPVerificationScreen extends StatelessWidget {
  final String phone;
  const OTPVerificationScreen({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'OTP Verification Screen',
            ),
            Text(
              'Phone: $phone',
            )
          ],
        ),
      ),
    );
  }
}
