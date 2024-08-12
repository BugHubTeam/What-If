import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:what_if/core/utils/app_strings.dart';
import 'package:what_if/core/utils/components/custom_radio_button.dart';
import 'package:what_if/core/utils/constants.dart';
import 'package:what_if/core/utils/styles.dart';
import '../../../../../core/utils/components/custom_container_with_1border.dart';
import '../../../../../core/utils/fonts.dart';
import '../../cubit/sub_category_cubit.dart';

class SelectedSubCategory extends StatefulWidget {
  const SelectedSubCategory({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<SelectedSubCategory> createState() => _SelectedSubCategoryState();
}

class _SelectedSubCategoryState extends State<SelectedSubCategory> {
  bool isClubs = true;

  @override
  Widget build(BuildContext context) {
    final subCategoryCubit = SubCategoryCubit.get(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: Stack(
            alignment: const Alignment(0.8, 0),
            children: [
              // SizedBox(width: mediaQuery.width * 0.05),
              CustomContainerWith1border(
                text: widget.text == categoryList[0].name
                    ? AppStrings.clubs.tr()
                    : AppStrings.movies.tr(),
                style: context.locale.toString() == 'en'
                    ? Styles.textStyle24Shrikh.copyWith(
                        color: Colors.white.withOpacity(isClubs ? 1 : 0.4),
                        fontFamily: context.locale.toString() == 'en'
                            ? null
                            : Fonts.notoSansArabicFont,
                      )
                    : Styles.textStyleArabicSubTitle.copyWith(
                        color: Colors.white.withOpacity(isClubs ? 1 : 0.4),
                      ),
                isRadialGradient: isClubs,
                borderRadius: 24,
                height: 8,
                textAlign: widget.text == categoryList[0].name
                    ? isClubs
                        ? context.locale.toString() ==
                                AppStrings.languageCodes[0]
                            ? TextAlign.start
                            : TextAlign.end
                        : TextAlign.center
                    : TextAlign.center,
                borderColor: isClubs ? null : const Color(0xff424242),
                borderWidth: isClubs ? null : 0,
                onTap: () {
                  if (categoryName == AppStrings.footBall) {
                    if (!isClubs) {
                      subCategoryCubit.footBallType = AppStrings.clubs;
                      SubCategoryCubit.get(context).getFootballData();
                    }
                  }

                  setState(() {
                    isClubs = true;
                  });
                },
              ),
              SizedBox(
                child: isClubs ? const CustomRadioButton() : null,
              ),
            ],
          ),
        ),
        SizedBox(
          width:
              widget.text == categoryList[0].name ? mediaQuery.width * 0.05 : 0,
        ),
        widget.text == categoryList[0].name
            ? Expanded(
                child: Stack(
                  alignment: const Alignment(0.9, 0),
                  children: [
                    CustomContainerWith1border(
                      text: AppStrings.players.tr(),
                      style: context.locale.toString() == 'en'
                          ? Styles.textStyle24Shrikh.copyWith(
                              color:
                                  Colors.white.withOpacity(isClubs ? 0.4 : 1),
                            )
                          : Styles.textStyleArabicSubTitle.copyWith(
                              color:
                                  Colors.white.withOpacity(isClubs ? 0.4 : 1),
                            ),
                      isRadialGradient: isClubs,
                      borderWidth: isClubs ? 0 : null,
                      borderRadius: 24,
                      height: 8,
                      textAlign: isClubs
                          ? TextAlign.center
                          : context.locale.toString() ==
                                  AppStrings.languageCodes[0]
                              ? TextAlign.start
                              : TextAlign.end,
                      borderColor: isClubs ? const Color(0xff424242) : null,
                      onTap: () {
                        subCategoryCubit.footBallType = AppStrings.players;
                        SubCategoryCubit.get(context).getFootballData(
                          getPlayers: true,
                        );

                        setState(() {
                          isClubs = false;
                        });
                      },
                    ),
                    SizedBox(
                      child: isClubs ? null : const CustomRadioButton(),
                    ),
                  ],
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
