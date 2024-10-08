import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:what_if/core/utils/app_colors.dart';
import 'package:what_if/core/utils/styles.dart';

import '../fonts.dart';

class CustomContainerWith1border extends StatelessWidget {
  const CustomContainerWith1border({
    super.key,
    this.onTap,
    required this.text,
    this.iconImage,
    this.borderRadius = 16,
    this.height,
    this.borderWidth,
    this.borderGradientColors,
    this.bgGradientColors,
    this.backgroundColor,
    this.style,
    this.borderColor,
    this.isRadialGradient = false,
    this.boxShadow,
    this.textAlign = TextAlign.center,
  });
  final String text;
  final void Function()? onTap;
  final String? iconImage;
  final double? borderRadius;
  final double? height;
  final double? borderWidth;
  final List<Color>? borderGradientColors;
  final List<Color>? bgGradientColors;
  final Color? backgroundColor;
  final Color? borderColor;
  final TextStyle? style;
  final bool? isRadialGradient;
  final List<BoxShadow>? boxShadow;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(boxShadow == null ? borderWidth ?? 3 : 0),
        decoration: BoxDecoration(
          boxShadow: boxShadow,
          //gradient
          gradient: borderColor != null
              ? null
              : isRadialGradient!
                  ? LinearGradient(
                      colors: borderGradientColors ??
                          AppColors.borderGradientColors1,
                    )
                  : RadialGradient(
                      colors: borderGradientColors ??
                          AppColors.borderGradientColors1,
                      radius: 1,
                    ),

          borderRadius: BorderRadius.circular(borderRadius!),
          border: borderColor == null
              ? null
              : Border.all(
                  color: borderColor!,
                  width: 3,
                ),
        ),
        child: Container(
          padding: EdgeInsets.all(borderWidth ?? 3),
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius!),
            color: backgroundColor,
            gradient: backgroundColor == null
                ? LinearGradient(
                    colors:
                        bgGradientColors ?? AppColors.containerBgGradientColors,
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  )
                : null,
          ),
          child: iconImage == null
              ? Padding(
                  padding: EdgeInsets.all(height ?? 0),
                  child: Text(
                    text,
                    style: style ??
                        Styles.textStyle16.copyWith(
                          fontFamily: context.locale.toString() == 'en'
                              ? null
                              : Fonts.notoSansArabicFont,
                        ),
                    textAlign: textAlign,
                  ),
                )
              : Image.asset(
                  iconImage!,
                  fit: BoxFit.fill,
                ),
        ),
      ),
    );
  }
}
