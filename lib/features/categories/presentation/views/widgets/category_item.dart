import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:what_if/config/routes/route_name.dart';
import 'package:what_if/core/utils/app_images.dart';
import 'package:what_if/core/utils/constants.dart';
import 'package:what_if/features/categories/data/models/category_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/components/custom_gradient_button.dart';
import '../../../../../core/utils/fonts.dart';
import '../../../../../core/utils/styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryModel,
    required this.index,
  });
  final CategoryModel categoryModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Bounceable(
      onTap: () {},
      child: Container(
        height: mediaQuery.height * 0.3,
        width: mediaQuery.width,
        margin: const EdgeInsets.only(bottom: 24),
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: AppColors.categotyBgGradientColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: const [
            AppColors.catagorieBoxShadow,
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(categoryModel.image),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                categoryModel.name.tr(),
                style:context.locale.toString() == 'en'?
                Styles.textStyle24.copyWith(
                  fontFamily: context.locale.toString() == 'en'
                      ? Fonts.zenDotsFontFamily
                      : Fonts.notoSansArabicFont,
                ):Styles.textStyleArabicSubTitle.copyWith(color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44),
                child: CustomGradientButton(
                  enableButton2: true,
                  iconImage: AppImages.playIcon,
                  onTap: () {
                    // await displaySound().then(
                    //   (value) {
                    //     Navigator.pushNamed(
                    //         context, RoutesName.subCategoryView);
                    //   },
                    // );
                    categoryName = categoryModel.name;
                    if (index != 2) {
                      Navigator.pushNamed(
                        context,
                        RoutesName.subCategoryView,
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
