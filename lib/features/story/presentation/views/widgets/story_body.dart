import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:what_if/config/routes/route_name.dart';
import 'package:what_if/core/utils/app_strings.dart';
import 'package:what_if/core/utils/components/custom_container.dart';
import 'package:what_if/core/utils/components/custom_gradient_button.dart';
import 'package:what_if/core/utils/functions/display_button.dart';
import 'package:what_if/core/utils/styles.dart';
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
            backOnTap: () async {
              //navigation
              await displaySound().then((value) {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  RoutesName.homeView,
                  (Route<dynamic> route) => false,
                );
              });
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
                    child: const SingleChildScrollView(
                      child: Text(
                        "Barcelona, one of the world's most storied football clubs, has a rich history steeped in glory. Founded in 1899, the club quickly became a symbol of Catalan culture and pride. Known for their distinctive style of play, tiki-taka, and their famous motto, Més que un club (More than a club), Barcelona has captivated fans with legendary players like Johan Cruyff... Founded in 1899, the club quickly became a symbol of Catalan culture and pride. Known for their distinctive style of play, tiki-taka, and their famous motto, Més que un club (More than a club), Barcelona has captivated fans with legendary players like Johan Cruyff",
                        style: Styles.textStyle16Moul,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
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
                onTap: () async {
                  await displaySound().then(
                    (value) {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        RoutesName.subCategoryView,
                        (Route<dynamic> route) => false,
                      );
                    },
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
                onTap: () async {
                  await displaySound().then(
                    (value) {},
                  );
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
