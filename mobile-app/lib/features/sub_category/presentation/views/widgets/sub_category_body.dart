import 'package:flutter/material.dart';
import '../../../../../config/routes/route_name.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/components/custom_app_bar.dart';
import '../../../../../core/utils/constants.dart';
import 'custom_text_field.dart';
import 'selected_sub_category.dart';
import 'sub_categories_grid_view.dart';

class SubCategoryBody extends StatelessWidget {
  const SubCategoryBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          CustomAppBar(
            title: AppStrings.chooseYourWishToStart,
            backOnTap: () {
              //navigation
              Navigator.of(context).pushNamedAndRemoveUntil(
                RoutesName.catagoriesView,
                (Route<dynamic> route) => false,
              );
            },
          ),
          SelectedSubCategory(
            text: categoryName,
          ),
          SizedBox(height: mediaQuery.height * 0.02),
          const CustomTextField(),
          SizedBox(height: mediaQuery.height * 0.02),
          const SubCategoriesGridView(),
        ],
      ),
    );
  }
}
