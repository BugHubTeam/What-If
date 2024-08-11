import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/components/custom_app_bar.dart';
import '../../../../../core/utils/components/custom_container.dart';
import '../../../../../core/utils/components/custom_gradien_widget.dart';
import '../../../../../core/utils/styles.dart';
import '../../manager/settings_cubit.dart';
import '../../../../../config/routes/route_name.dart';
import '../../../../../core/utils/components/custom_gradient_button.dart';
import 'select_lang_builder.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
      child: Column(
        children: [
          const CustomAppBar(title: AppStrings.settings),
          SizedBox(height: mediaQuery.height * 0.04),
          CustomContainer(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomGradientWidget(
                    gradientColors: AppColors.containerBgGradientColors,
                    child: Text(
                      AppStrings.pleaseChooseYourLanguage.tr(),
                      style: Styles.textStyle24.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(flex: 1),

                  // Select Language
                  const SelectLangBuilder(),
                  const Spacer(flex: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.yourLanguagePreference.tr(),
                        style: Styles.textStyle12,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const Spacer(flex: 1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: CustomGradientButton(
                      text: AppStrings.continueSTR.tr(),
                      enableButton2: true,
                      onTap: () {
                        // await displaySound().then(
                        //   (value) {
                        //     //change language
                        //     BlocProvider.of<SettingsCubit>(context)
                        //         .changeLanguage(context);

                        //     //navigation
                        //     Navigator.of(context).pushNamedAndRemoveUntil(
                        //       RoutesName.homeView,
                        //       (Route<dynamic> route) => false,
                        //     );
                        //   },
                        // );
                        //change language
                        BlocProvider.of<SettingsCubit>(context)
                            .changeLanguage(context);

                        //navigation
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          RoutesName.homeView,
                          (Route<dynamic> route) => false,
                        );
                      },
                    ),
                  ),
                  const Spacer(flex: 1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
