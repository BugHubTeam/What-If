import 'package:flutter/material.dart';
import 'package:what_if/core/utils/app_colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Expanded(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: mediaQuery.width,
            height: mediaQuery.height,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              gradient: const LinearGradient(
                colors: AppColors.containerBgGradientColors,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              boxShadow: const [
                AppColors.settingsBoxShadow,
              ],
            ),
            child: Container(
              width: mediaQuery.width,
              height: mediaQuery.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                color: const Color(0XFFD9D9D9),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: mediaQuery.height * 0.12),
                  Expanded(
                    child: child ?? const SizedBox(),
                  ),
                  // child ?? const SizedBox(),
                ],
              ),
            ),
          ),
          Positioned(
            top: -73,
            child: Image.asset(
              'assets/images/Logo.png',
              fit: BoxFit.fill,
              height: 180,
            ),
          ),
        ],
      ),
    );
  }
}
