import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../cubit/story_cubit.dart';

import '../../../../../core/utils/components/custom_loading.dart';

class StoryBuilder extends StatelessWidget {
  const StoryBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoryCubit, StoryState>(
      builder: (context, state) {
        if (state is StoryFailure) {
          Center(
            child: Text(state.errorMessage),
          );
        }

        if (state is StorySuccess) {
          return SingleChildScrollView(
            child: Text(
              '“${state.story}”',
              style: Styles.textStyle16Moul,
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
