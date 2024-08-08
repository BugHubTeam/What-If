import 'package:flutter/material.dart';

import '../app_colors.dart';

class CustomGradientWidget extends StatelessWidget {
  const CustomGradientWidget({
    super.key,
    this.gradientColors,
    required this.child,
  });
  final List<Color>? gradientColors;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: gradientColors ?? AppColors.defaultGradientColors,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(bounds),

      child: child, //child like text or icon , must have a color = white .
    );
  }
}
