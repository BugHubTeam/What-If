import 'package:flutter/material.dart';
import 'package:what_if/features/home/presentation/views/home_view.dart';
import 'package:what_if/features/splash/presentation/views/splash_view.dart';
import 'route_name.dart';

class Routes {
  static Route<dynamic> onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
      case RoutesName.homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(),
          settings: settings,
        );
    }
  }
}
