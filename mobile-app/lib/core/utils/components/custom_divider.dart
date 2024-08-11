import 'package:flutter/material.dart';
import '../app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, this.height});
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        gradient: const LinearGradient(
          colors: AppColors.containerBgGradientColors,
        ),
      ),
    );
  }
}
