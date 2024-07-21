import 'package:flutter/material.dart';
import 'package:what_if/core/utils/app_colors.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({
    super.key,
    this.enableButton2 = false,
  });
  final bool? enableButton2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        gradient: const RadialGradient(
          colors: AppColors.borderGradientColors1,
          radius: 2,
        ),
        borderRadius: BorderRadius.circular(enableButton2 == true ? 16 : 0),
      ),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: enableButton2 == true ? null : const Color(0XFF23094C),
          borderRadius: BorderRadius.circular(enableButton2 == true ? 16 : 0),
          gradient: enableButton2 == true
              ? const LinearGradient(
                  colors: AppColors.defaultGradientColors,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : null,
        ),
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.048,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: const LinearGradient(
                colors: AppColors.containerBgGradientColors,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )),
          child: const Center(
            child: Text(
              'Gradient Border',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
