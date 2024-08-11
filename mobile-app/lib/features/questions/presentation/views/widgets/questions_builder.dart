import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:what_if/core/utils/app_colors.dart';
import 'package:what_if/core/utils/components/custom_loading.dart';
import 'package:what_if/core/utils/styles.dart';
import 'package:what_if/features/questions/presentation/manager/questions_cubit.dart';
import '../../../../../core/utils/fonts.dart';
import 'num_of_questions_widget.dart';

class QuestionsBuilder extends StatelessWidget {
  const QuestionsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var cubit = QuestionsCubit.get(context);

    return BlocBuilder<QuestionsCubit, QuestionsState>(
      builder: (context, state) {
        if (state is QuestionsFailure) {
          Center(
            child: Text(
              state.errorMessage,
              style: Styles.textStyle16Moul.copyWith(
                fontFamily: context.locale.toString() == 'en'
                    ? null
                    : Fonts.notoSansArabicFont,
              ),
            ),
          );
        }
        if (state is QuestionsLoading || state is QuestionsInitial) {
          return const Center(
            child: CustomLoading(
              color: AppColors.primaryColor,
            ),
          );
        }

        return Column(
          children: [
            NumOfQuestionsWidget(
              numberOfQuestions: cubit.numOfQuestion.toString(),
            ),
            SizedBox(height: mediaQuery.height * 0.022),
            SizedBox(
              height: mediaQuery.height * 0.3,
              child: SingleChildScrollView(
                child: Text(
                  '${cubit.currentQuestion}',
                  style: context.locale.toString() == 'en'?
                  Styles.textStyle24.copyWith(
                    color: Colors.black,
                  ):Styles.textStyleArabicText,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
