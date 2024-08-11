import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:what_if/core/utils/app_colors.dart';
import 'package:what_if/core/utils/styles.dart';
import 'package:what_if/features/sub_category/presentation/cubit/sub_category_cubit.dart';
import 'sub_categories_grid_view.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubCategoryCubit, SubCategoryState>(
      builder: (context, state) {
        if (state is SubCategorySuccess) {
          return SubCategoriesGridView(
            subCategoryList: state.subCategoyList,
          );
        }

        if (state is SubCategoryFailure) {
          return Center(
            child: Text(
              state.errorMessage,
              style: Styles.textStyle16,
            ),
          );
        }
        // return const CustomLoading(
        //   color: Colors.white,
        // );
        return Expanded(
          child: Shimmer.fromColors(
            baseColor: AppColors.unSelectedColor,
            highlightColor: Colors.blue,
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.898,
                crossAxisSpacing: 24,
                mainAxisSpacing: 24,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                );
              },
              itemCount: 4,
            ),
          ),
        );
      },
    );
  }
}
