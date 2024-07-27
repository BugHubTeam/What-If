import 'package:flutter/material.dart';
import 'package:what_if/core/utils/app_strings.dart';
import 'package:what_if/core/utils/components/custom_app_bar.dart';
import '../../../../../core/utils/constants.dart';
import 'category_item.dart';

class CategoriesBody extends StatelessWidget {
  const CategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    // var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(title: AppStrings.catagories),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.87,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return CategoryItem(
                    categoryModel: categoryList[index],
                  );
                },
                itemCount: categoryList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
