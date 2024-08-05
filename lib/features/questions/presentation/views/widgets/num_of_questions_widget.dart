import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:what_if/core/utils/app_strings.dart';
import 'package:what_if/core/utils/styles.dart';

import '../../../../../core/utils/components/custom_divider.dart';

class NumOfQuestionsWidget extends StatelessWidget {
  const NumOfQuestionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isEnglish = context.locale.toString() == AppStrings.languageCodes[0];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 6),
          child: Row(
            children: [
              const Text(
                '1',
                style: Styles.textStyle24Shrikh,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  ' ${AppStrings.of.tr()}  ',
                  style: Styles.textStyle24Shrikh.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
              Text(
                '5',
                style: Styles.textStyle24Shrikh.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            right: isEnglish ? 233 : 0,
            left: isEnglish ? 0 : 233,
          ),
          child: const CustomDivider(height: 3),
        ),
      ],
    );
  }
}