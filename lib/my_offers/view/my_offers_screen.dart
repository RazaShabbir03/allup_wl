import 'package:flutter/material.dart';

class MyOffersScreen extends StatelessWidget {
  const MyOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Offers'),
      ),
      body: Center(
        child: Text('My Offers'),
      ),
    );
  }
}
