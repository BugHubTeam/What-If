import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:what_if/core/utils/app_colors.dart';
import 'package:what_if/core/utils/app_images.dart';
import 'package:what_if/core/utils/components/custom_container.dart';
import 'package:what_if/core/utils/styles.dart';
import 'package:what_if/features/questions/presentation/manager/questions_cubit.dart';
import 'package:what_if/features/questions/presentation/views/widgets/no_widget.dart';
import 'package:what_if/features/questions/presentation/views/widgets/questions_builder.dart';
import 'package:what_if/features/questions/presentation/views/widgets/yes_widget.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/components/custom_app_bar.dart';
import '../../../../../core/utils/components/custom_container_with_1border.dart';

class QuestionsBody extends StatelessWidget {
  const QuestionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var cubit = QuestionsCubit.get(context);

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          const CustomAppBar(title: AppStrings.questions),
          SizedBox(height: mediaQuery.height * 0.08),
          CustomContainer(
            emptySpaceHeight: mediaQuery.height * 0.1,
            borderRadius: 40,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 34),
              child: QuestionsBuilder(),
            ),
          ),
          const SizedBox(height: 5),
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                AppImages.yesORno,
                height: mediaQuery.height * 0.095,
                width: mediaQuery.width,
              ),
              Positioned(
                left: mediaQuery.width * 0.17,
                child: const NoWidget(text: AppStrings.no),
              ),
              Positioned(
                right: mediaQuery.width * 0.16,
                child: const YesWidget(text: AppStrings.yes),
              ),
              Positioned(
                top: -20,
                child: SizedBox(
                  width: mediaQuery.width * 0.5,
                  height: mediaQuery.height * 0.044,
                  child: CustomContainerWith1border(
                    text: AppStrings.whatsYourAnswer.tr(),
                    textAlign: TextAlign.center,
                    style: Styles.textStyle16Shrikh,
                    isRadialGradient: true,
                    borderRadius: 30,
                    height: 0,
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
              height: mediaQuery.height * 0.01,
              boxShadow: const [AppColors.selectLangBoxShadow],
              onTap: () {
                // await displaySound().then(
                //   (value) {
                //     cubit.skipQuestion();
                //   },
                // );
                cubit.skipQuestion();
              },
            ),
          ),
          SizedBox(height: mediaQuery.height * 0.08),
        ],
      ),
    );
  }
}
