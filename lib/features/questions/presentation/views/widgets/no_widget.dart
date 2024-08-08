import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/styles.dart';
import 'dart:ui' as ui;

import '../../manager/questions_cubit.dart';

class NoWidget extends StatelessWidget {
  const NoWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    var cubit = QuestionsCubit.get(context);
    return Bounceable(
      onTap: () {
        // await displaySound().then(
        //   (value) {
        //     cubit.answerTheQuestion(context);
        //   },
        // );
        cubit.answerTheQuestion(context);
      },
      child: Row(
        textDirection: ui.TextDirection.ltr,
        children: [
          const Icon(
            Icons.arrow_back,
            color: AppColors.redDarkColor2,
            size: 45,
            textDirection: ui.TextDirection.ltr,
          ),
          Text(
            text.tr(),
            style: Styles.textStyle24.copyWith(
              color: AppColors.redDarkColor2,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}
