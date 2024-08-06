import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:what_if/core/utils/styles.dart';
import 'package:what_if/features/questions/presentation/manager/questions_cubit.dart';
import '../../../../../core/utils/app_colors.dart';
import 'dart:ui' as ui;

import '../../../../../core/utils/functions/display_button.dart';

class YesWidget extends StatelessWidget {
  const YesWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    var cubit = QuestionsCubit.get(context);
    return Bounceable(
      onTap: () async {
        await displaySound().then(
          (value) {
            cubit.answerTheQuestion(context);
          },
        );
      },
      child: Row(
        textDirection: ui.TextDirection.ltr,
        children: [
          Text(
            text.tr(),
            style: Styles.textStyle24.copyWith(
              color: AppColors.greenDark,
              fontSize: 32,
            ),
          ),
          const Icon(
            Icons.arrow_forward,
            color: AppColors.greenDark,
            size: 45,
            textDirection: ui.TextDirection.ltr,
          ),
        ],
      ),
    );
  }
}
