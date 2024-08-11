import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:what_if/core/utils/app_images.dart';
import 'package:what_if/features/home/presentation/views/home_view.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: AnimatedSplashScreen(
            nextScreen: const HomeView(),
            splash: AppImages.logo,
            animationDuration: const Duration(milliseconds: 2300),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.transparent,
            splashIconSize: 300,
          ),
        )
      ],
    );
  }
}
