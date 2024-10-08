import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:what_if/core/utils/app_colors.dart';
import 'package:what_if/core/utils/components/custom_divider.dart';
import 'package:what_if/core/utils/fonts.dart';
import 'package:what_if/core/utils/styles.dart';

class CustomLearnItem extends StatelessWidget {
  const CustomLearnItem({
    super.key,
    required this.title,
    required this.subTitle,
    this.enableDivider = true,
  });

  final String title;
  final String subTitle;
  final bool? enableDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 6),
        Text(
          title.tr(),
          style: context.locale.toString() == 'en'
              ? Styles.textStyle24.copyWith(
                  color: AppColors.primaryColor,
                  fontFamily: context.locale.toString() == 'en'
                      ? Fonts.zenDotsFontFamily
                      : Fonts.notoSansArabicFont,
                )
              : Styles.textStyleArabicSubTitle
                  .copyWith(color: AppColors.arabicColor),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Text(
          subTitle.tr(),
          style: context.locale.toString() == 'en'
              ? Styles.textStyle16.copyWith(
                  color: Colors.black,
                  fontFamily: Fonts.zenDotsFontFamily,
                )
              : Styles.textStyleArabicText,
          textAlign: TextAlign.center,
        ),

        //divider
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 18),
          child: enableDivider! ? const CustomDivider() : null,
        ),
      ],
    );
  }
}
