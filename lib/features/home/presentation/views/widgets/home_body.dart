import 'dart:developer';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:what_if/core/utils/app_strings.dart';
import 'package:what_if/core/utils/components/custom_gradien_widget.dart';
import 'package:what_if/core/utils/components/custom_gradient_button.dart';
import 'package:what_if/core/utils/styles.dart';
import 'dart:ui' as ui;

import '../../../../../config/routes/route_name.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: mediaQuery.height * 0.07),
        const Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: CustomGradientWidget(
              child: Text(
                'WHATIF?!',
                style: Styles.textStyle56,
                textAlign: TextAlign.center,
                textDirection: ui.TextDirection.ltr,
              ),
            ),
          ),
        ),
        const Spacer(flex: 7),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 75),
          child: CustomGradientButton(
            text: AppStrings.letsPlay.tr(),
            onTap: () {
              Navigator.pushNamed(context, RoutesName.catagoriesView);
            },
            enableBorderRadius: false,
          ),
        ),
        const Spacer(flex: 1),
        Row(
          children: [
            SizedBox(width: mediaQuery.width * 0.05),
            Expanded(
              child: CustomGradientButton(
                text: AppStrings.settings.tr(),
                onTap: () {
                  if (context.locale.toString() ==
                      AppStrings.languageCodes[0]) {
                    context.setLocale(
                      Locale(AppStrings.languageCodes[1]),
                    );
                  } else {
                    context.setLocale(
                      Locale(AppStrings.languageCodes[0]),
                    );
                  }
                  log(context.locale.toString());
                },
              ),
            ),
            SizedBox(width: mediaQuery.width * 0.05),
            Expanded(
              child: CustomGradientButton(
                text: AppStrings.howToPlay.tr(),
                onTap: () {},
              ),
            ),
            SizedBox(width: mediaQuery.width * 0.05),
          ],
        ),
        SizedBox(height: mediaQuery.height * 0.07),
      ],
    );
  }
}
