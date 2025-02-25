import 'package:counter/basketball_app.dart';
import 'package:counter/basketball_splash.dart';
import 'package:counter/counter.dart';
import 'package:counter/flash_light.dart';
import 'package:counter/main.dart';
import 'package:counter/routers/route_name.dart';
import 'package:counter/splash_for_nav.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route ? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashForNav:
        return MaterialPageRoute(builder: (_) => const SplashForNav());
      case RouteName.basketball:
        return MaterialPageRoute(builder: (_) => const BasketballApp());
      case RouteName.flashLight:
        return MaterialPageRoute(builder: (_) => const FlashLight());
      case RouteName.counter:
        return MaterialPageRoute(builder: (_) => const counter());
      case RouteName.splash:
        return MaterialPageRoute(builder: (_) => const BasketballSplash());
      default:
        return null;
    }
  }
  
}