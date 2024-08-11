import 'package:flutter/material.dart';
import 'package:what_if/core/utils/components/custom_scaffold.dart';
import 'widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: SplashBody(),
    );
  }
}
