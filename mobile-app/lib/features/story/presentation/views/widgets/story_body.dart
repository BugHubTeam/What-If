import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../config/routes/route_name.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/components/custom_container.dart';
import '../../../../../core/utils/components/custom_gradient_button.dart';
import 'story_builder.dart';
import '../../../../../core/utils/components/custom_app_bar.dart';

class StoryBody extends StatelessWidget {
  const StoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          CustomAppBar(
            title: AppStrings.story,
            backOnTap: () {
              //navigation
              // await displaySound().then((value) {
              //   Navigator.of(context).pushNamedAndRemoveUntil(
              //     RoutesName.homeView,
              //     (Route<dynamic> route) => false,
              //   );
              // });
              Navigator.of(context).pushNamedAndRemoveUntil(
                RoutesName.homeView,
                (Route<dynamic> route) => false,
              );
            },
          ),
          SizedBox(height: mediaQuery.height * 0.05),
          CustomContainer(
            emptySpaceHeight: mediaQuery.height * 0.1,
            borderRadius: 40,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  SizedBox(
                      height: mediaQuery.height * 0.47,
                      child: const StoryBuilder()),
                ],
              ),
            ),
          ),
          SizedBox(height: mediaQuery.height * 0.035),
          FadeInUp(
            duration: const Duration(milliseconds: 1300),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 85),
              child: CustomGradientButton(
                text: AppStrings.playAgain.tr(),
                enableButton2: true,
                onTap: () {
                  // await displaySound().then(
                  //   (value) {
                  //     Navigator.of(context).pushNamedAndRemoveUntil(
                  //       RoutesName.subCategoryView,
                  //       (Route<dynamic> route) => false,
                  //     );
                  //   },
                  // );
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    RoutesName.subCategoryView,
                    (Route<dynamic> route) => false,
                  );
                },
              ),
            ),
          ),
          SizedBox(height: mediaQuery.height * 0.035),
          FadeInUp(
            delay: const Duration(seconds: 2),
            duration: const Duration(milliseconds: 1300),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: CustomGradientButton(
                text: AppStrings.share.tr(),
                enableButton2: true,
                onTap: () {
                  // await displaySound().then(
                  //   (value) {},
                  // );
                },
              ),
            ),
          ),
          SizedBox(height: mediaQuery.height * 0.035),
        ],
      ),
    );
  }
}
