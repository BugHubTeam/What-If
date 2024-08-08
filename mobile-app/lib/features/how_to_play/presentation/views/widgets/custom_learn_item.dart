import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/components/custom_divider.dart';
import '../../../../../core/utils/fonts.dart';
import '../../../../../core/utils/styles.dart';

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
          style: Styles.textStyle24.copyWith(
            color: AppColors.primaryColor,
            fontFamily: Fonts.zenDotsFontFamily,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Text(
          subTitle.tr(),
          style: Styles.textStyle16.copyWith(
            color: Colors.black,
            fontFamily: Fonts.zenDotsFontFamily,
          ),
          textAlign: TextAlign.center,
        ),

        //divider
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 18),
          child: enableDivider!
              ? const CustomDivider()
              : null,
        ),
      ],
    );
  }
}
