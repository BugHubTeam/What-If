import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:what_if/config/routes/route_name.dart';
import 'package:what_if/features/categories/data/models/category_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/components/custom_gradient_button.dart';
import '../../../../../core/utils/fonts.dart';
import '../../../../../core/utils/styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;

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
                style: Styles.textStyle24.copyWith(
                  fontFamily: Fonts.zenDotsFontFamily,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44),
                child: CustomGradientButton(
                  text: '',
                  enableButton2: true,
                  iconImage: 'assets/images/play_icon.png',
                  // onTap: categoryModel.onTap,
                  onTap: () {
                    Navigator.pushNamed(context, RoutesName.questionsView);
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
