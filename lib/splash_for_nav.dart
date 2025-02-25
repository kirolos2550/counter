import 'dart:math';

import 'package:counter/basketball_app.dart';
import 'package:counter/basketball_splash.dart';
import 'package:counter/counter.dart';
import 'package:counter/flash_light.dart';
import 'package:flutter/material.dart';

class SplashForNav extends StatelessWidget {
  const SplashForNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: Center(
        child: Column(
          spacing: 30,
          children: [
            
            const Text(
              'Splash Screen',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BasketballApp(),
                  ),
                );
              },
              child: const Text('Go to Basketball App'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/flashlight',
                );
              },
              child: const Text('Go to Flash Light'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/counter',
                );
              },
              child: const Text('Go to counter'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/splash',
                );
              },
              child: const Text('Go to Basketball Splash'),
            ),
            
          ],
        ),
      ),
    );
  }
}