import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:what_if/core/utils/app_colors.dart';
import 'package:what_if/core/utils/styles.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({
    super.key,
    this.enableButton2 = false,
    this.onTap,
    required this.text,
    this.enableBorderRadius = true,
    this.iconImage,
  });
  final String text;
  final bool? enableButton2;
  final bool? enableBorderRadius;
  final void Function()? onTap;
  final String? iconImage;

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          gradient: const RadialGradient(
            colors: AppColors.borderGradientColors1,
            radius: 2,
          ),
          borderRadius: BorderRadius.circular(enableBorderRadius! ? 16 : 0),
        ),
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: enableButton2 == true ? null : const Color(0XFF23094C),
            borderRadius: BorderRadius.circular(enableBorderRadius! ? 16 : 0),
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
              ),
            ),
            child: Center(
              child: iconImage == null
                  ? Text(
                      text,
                      style: Styles.textStyle16,
                      textAlign: TextAlign.center,
                    )
                  : Image.asset(
                      iconImage!,
                      fit: BoxFit.fill,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
