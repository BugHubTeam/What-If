import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:what_if/core/utils/app_colors.dart';
import 'package:what_if/core/utils/styles.dart';
import 'package:what_if/features/story/presentation/cubit/story_cubit.dart';

import '../../../../../core/utils/components/custom_loading.dart';
import '../../../../../core/utils/fonts.dart';

class StoryBuilder extends StatelessWidget {
  const StoryBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoryCubit, StoryState>(
      builder: (context, state) {
        if (state is StoryFailure) {
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

        if (state is StorySuccess) {
          return SingleChildScrollView(
            child: Text(
              '${state.story}',
              style: context.locale.toString() == 'en'?
              Styles.textStyle16Moul.copyWith(
              ):Styles.textStyleArabicText,
              textAlign: TextAlign.center,
            ),
          );
        }

        return const Center(
          child: CustomLoading(
            color: AppColors.primaryColor,
          ),
        );
      },
    );
  }
}
