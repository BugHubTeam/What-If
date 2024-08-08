import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../../../../../config/routes/route_name.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/components/custom_app_bar.dart';
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
            CustomAppBar(
              title: AppStrings.catagories,
              backOnTap: () {
                // displaySound().then(
                //   (value) {
                //     //navigation
                //     Navigator.of(context).pushNamedAndRemoveUntil(
                //       RoutesName.homeView,
                //       (Route<dynamic> route) => false,
                //     );
                //   },
                // );
                //navigation
                Navigator.of(context).pushNamedAndRemoveUntil(
                  RoutesName.homeView,
                  (Route<dynamic> route) => false,
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.87,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return FadeInUpBig(
                    duration: const Duration(milliseconds: 1300),
                    child: CategoryItem(
                      categoryModel: categoryList[index],
                      index: index,
                    ),
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
