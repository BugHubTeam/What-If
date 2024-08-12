import 'package:flutter/material.dart';
import 'package:what_if/config/routes/route_name.dart';
import 'package:what_if/core/utils/app_strings.dart';
import 'package:what_if/core/utils/components/custom_app_bar.dart';
import 'package:what_if/core/utils/constants.dart';
import 'package:what_if/features/sub_category/presentation/views/widgets/custom_text_field.dart';
import 'package:what_if/features/sub_category/presentation/views/widgets/grid_view_builder.dart';
import 'package:what_if/features/sub_category/presentation/views/widgets/selected_sub_category.dart';

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
          //search
          const CustomTextField(),
          SizedBox(height: mediaQuery.height * 0.02),
          const GridViewBuilder(),
        ],
      ),
    );
  }
}
