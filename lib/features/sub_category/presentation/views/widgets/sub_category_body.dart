import 'package:flutter/material.dart';
import 'package:what_if/core/utils/app_strings.dart';
import 'package:what_if/core/utils/components/custom_app_bar.dart';
import 'package:what_if/features/sub_category/presentation/views/widgets/custom_text_field.dart';
import 'package:what_if/features/sub_category/presentation/views/widgets/selected_sub_category.dart';
import 'package:what_if/features/sub_category/presentation/views/widgets/sub_categories_grid_view.dart';

class SubCategoryBody extends StatelessWidget {
  const SubCategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          const CustomAppBar(title: AppStrings.chooseYourWishToStart),
          const SelectedSubCategory(),
          SizedBox(height: mediaQuery.height * 0.02),
          const CustomTextField(),
          SizedBox(height: mediaQuery.height * 0.02),
          const SubCategoriesGridView(),
        ],
      ),
    );
  }
}
