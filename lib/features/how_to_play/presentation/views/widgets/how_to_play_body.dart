import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:what_if/core/utils/app_strings.dart';
import 'package:what_if/core/utils/components/custom_container.dart';
import 'package:what_if/features/how_to_play/presentation/views/widgets/custom_learn_item.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/components/custom_app_bar.dart';
import '../../../../../core/utils/components/custom_gradien_widget.dart';
import '../../../../../core/utils/styles.dart';

class HowToPlayBody extends StatelessWidget {
  const HowToPlayBody({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
      child: Column(
        children: [
          const CustomAppBar(title: ''),
          SizedBox(height: mediaQuery.height * 0.04),
          CustomContainer(
            emptySpaceHeight: mediaQuery.height * 0.1,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  CustomGradientWidget(
                    gradientColors: AppColors.containerBgGradientColors,
                    child: Text(
                      "${AppStrings.howToPlay.tr()} \n“What if”",
                      style: Styles.textStyle24.copyWith(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 32,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const CustomLearnItem(
                    title: AppStrings.selectACategory,
                    subTitle: AppStrings.chooseFromOptions,
                  ),
                  const CustomLearnItem(
                    title: AppStrings.chooseAFocus,
                    subTitle: AppStrings.decideWhetherYouWant,
                  ),
                  const CustomLearnItem(
                    title: AppStrings.answer5Questions,
                    subTitle: AppStrings.provideResponsesTo,
                  ),
                  const CustomLearnItem(
                    title: AppStrings.generateYourStory,
                    subTitle: AppStrings.askAItoCreateTheStory,
                  ),
                  const CustomLearnItem(
                    title: AppStrings.shareTheStory,
                    subTitle: AppStrings.shareTheGeneratedStory,
                    enableDivider: false,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
