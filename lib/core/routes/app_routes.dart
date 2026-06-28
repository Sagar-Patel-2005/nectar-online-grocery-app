import 'package:flutter/material.dart';
import 'package:new_nectar_ui_project/views/sign-in/login_screen.dart';
import 'package:new_nectar_ui_project/views/splash/splash_screen.dart';

import '../../views/welcome/welcome_screen.dart';

class AppRoutes {
  static const String SplashRoute = '/';
  static const String WelcomeRoute = '/welcome';
  static const String SignInRoute = '/sign-in';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case WelcomeRoute:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case SignInRoute:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("Not found")),
          ),
        );
    }
  }


}