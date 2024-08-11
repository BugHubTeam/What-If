import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:what_if/core/utils/app_colors.dart';
import 'package:what_if/core/utils/fonts.dart';
import 'package:what_if/core/utils/styles.dart';
import 'package:what_if/features/sub_category/presentation/cubit/sub_category_cubit.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final subCategoryCubit = SubCategoryCubit.get(context);

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: AppColors.catagoryTitelGradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        style: Styles.textStyle16Inter.copyWith(color: Colors.grey),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          filled: true,
          border: OutlineInputBorder(
            gapPadding: 0,
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none),
          ),
          fillColor: const Color(0xff261452),
          hintText: AppStrings.search.tr(),
          hintStyle: Styles.textStyle16Inter.copyWith(
            color: Colors.grey,
            fontFamily: context.locale.toString() == 'en'
                ? null
                : Fonts.notoSansArabicFont,
          ),
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 10),
              const Icon(
                Icons.search,
                color: Colors.white,
              ),
              const SizedBox(width: 7),
              Container(
                width: 3,
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              const SizedBox(width: 7),
            ],
          ),
        ),
        onChanged: (value) {
          if (categoryName == AppStrings.footBall) {
            if (subCategoryCubit.footBallType == AppStrings.clubs) {
              if (value != '') {
                subCategoryCubit.getFootballData(name: value);
              } else {
                subCategoryCubit.getFootballData();
              }
            } else if (subCategoryCubit.footBallType == AppStrings.players) {
              if (value != '') {
                subCategoryCubit.getFootballData(name: value, getPlayers: true);
              } else {
                subCategoryCubit.getFootballData();
              }
            } else {
              if (value != '') {
                subCategoryCubit.getFootballData(getPlayers: true, name: value);
              } else {
                subCategoryCubit.getFootballData(getPlayers: true);
              }
            }
          } else if (categoryName == AppStrings.tv) {
            value == ''
                ? subCategoryCubit.getMovies()
                : subCategoryCubit.getMovies(name: value);
          }
        },
      ),
    );
  }
}
