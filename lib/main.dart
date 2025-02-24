import 'package:counter/basketball_splash.dart';
import 'package:counter/flash_light.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Counter());
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlashLight(),
    );
  }
}

