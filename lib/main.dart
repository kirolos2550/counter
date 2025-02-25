// ignore_for_file: unused_import

import 'package:counter/routers/app_router.dart';
import 'package:counter/basketball_app.dart';
import 'package:counter/basketball_splash.dart';
import 'package:counter/counter.dart';
import 'package:counter/flash_light.dart';
import 'package:counter/splash_for_nav.dart';
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
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}

