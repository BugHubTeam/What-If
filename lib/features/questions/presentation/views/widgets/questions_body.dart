import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:what_if/config/routes/route_name.dart';
import 'package:what_if/core/utils/app_colors.dart';
import 'package:what_if/core/utils/app_images.dart';
import 'package:what_if/core/utils/components/custom_container.dart';
import 'package:what_if/core/utils/styles.dart';
import 'package:what_if/features/questions/presentation/views/widgets/no_widget.dart';
import 'package:what_if/features/questions/presentation/views/widgets/num_of_questions_widget.dart';
import 'package:what_if/features/questions/presentation/views/widgets/yes_widget.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/components/custom_app_bar.dart';
import '../../../../../core/utils/components/custom_container_with_1border.dart';

class QuestionsBody extends StatelessWidget {
  const QuestionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          const CustomAppBar(title: AppStrings.questions),
          SizedBox(height: mediaQuery.height * 0.09),
          CustomContainer(
            emptySpaceHeight: mediaQuery.height * 0.1,
            borderRadius: 40,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: Column(
                children: [
                  const NumOfQuestionsWidget(),
                  SizedBox(height: mediaQuery.height * 0.022),
                  SizedBox(
                    height: mediaQuery.height * 0.3,
                    child: SingleChildScrollView(
                      child: Text(
                        '“Is Catalan a language or a dialect?”',
                        style: Styles.textStyle24.copyWith(
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                AppImages.yesORno,
                height: mediaQuery.height * 0.09,
              ),
              Positioned(
                left: mediaQuery.width * 0.02,
                child: const NoWidget(text: AppStrings.no),
              ),
              Positioned(
                left: mediaQuery.width * 0.35,
                child: const YesWidget(text: AppStrings.yes),
              ),
              Positioned(
                top: -20,
                child: SizedBox(
                  width: mediaQuery.width * 0.5,
                  child: CustomContainerWith1border(
                    text: AppStrings.whatsYourAnswer.tr(),
                    style: Styles.textStyle16Shrikh,
                    isRadialGradient: true,
                    borderRadius: 30,
                    height: mediaQuery.height * 0.035,
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: mediaQuery.height * 0.03),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 75),
            child: CustomContainerWith1border(
              text: AppStrings.skipQuestion.tr(),
              style: Styles.textStyle16,
              backgroundColor: const Color(0xff374179),
              borderColor: AppColors.redDarkColor,
              borderRadius: 30,
              height: mediaQuery.height * 0.03,
              boxShadow: const [AppColors.selectLangBoxShadow],
              onTap: () {
                Navigator.pushNamed(context, RoutesName.storyView);
              },
            ),
          ),
          SizedBox(height: mediaQuery.height * 0.08),
        ],
      ),
    );
  }
}
