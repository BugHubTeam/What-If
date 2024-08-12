import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:what_if/core/utils/app_colors.dart';
import 'package:what_if/core/utils/constants.dart';
import 'package:what_if/core/utils/styles.dart';
import 'package:what_if/features/sub_category/domain/entities/sub_category_entity.dart';
import 'package:what_if/features/sub_category/presentation/cubit/sub_category_cubit.dart';
import '../../../../../core/utils/app_strings.dart';

class SubCategoryItem extends StatelessWidget {
  const SubCategoryItem({
    super.key,
    required this.isSelected,
    this.subCategoryEntity,
  });

  final bool isSelected;
  final SubCategoryEntity? subCategoryEntity;

  @override
  Widget build(BuildContext context) {
    final cubit = SubCategoryCubit.get(context);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow:
                isSelected ? const [AppColors.selectLangBoxShadow] : null,
            gradient: LinearGradient(
              colors: isSelected
                  ? AppColors.defaultGradientColors
                  : AppColors.containerBgGradientColors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: isSelected ? Colors.white : AppColors.unSelectedColor,
            ),
            child: Container(
              padding: EdgeInsets.only(
                bottom: categoryName == AppStrings.footBall ? 24 : 0,
                top: categoryName == AppStrings.footBall &&
                        cubit.footBallType == AppStrings.clubs
                    ? 8
                    : 0,
              ),
              width: double.infinity,
              height: categoryName == AppStrings.footBall
                  ? MediaQuery.of(context).size.height * 0.203
                  : null,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(
                  imageUrl: subCategoryEntity?.image ?? '',
                  fit: categoryName == AppStrings.footBall
                      ? BoxFit.contain
                      : BoxFit.fill,
                  errorWidget: (context, url, error) => const Center(
                    child: Icon(Icons.error),
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          width: double.infinity,
          decoration: categoryName == AppStrings.footBall
              ? null
              : BoxDecoration(
                  color: const Color(0xff261758).withOpacity(0.6),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
          child: Text(
            subCategoryEntity!.name.length > 16 &&
                    categoryName == AppStrings.footBall
                ? subCategoryEntity?.name ?? ' Not Found'
                : subCategoryEntity!.name.length > 16
                    ? "${subCategoryEntity?.name.substring(0, 14)}..."
                    : subCategoryEntity?.name ?? ' Not Found',
            style: subCategoryEntity!.name.length > 16 &&
                    categoryName == AppStrings.footBall
                ? Styles.textStyle16Shrikh.copyWith(
                    fontSize: 13,
                    color: categoryName == AppStrings.footBall
                        ? Colors.black.withOpacity(isSelected ? 1 : 0.5)
                        : Colors.white.withOpacity(isSelected ? 1 : 0.5),
                  )
                : Styles.textStyle16Shrikh.copyWith(
                    color: categoryName == AppStrings.footBall
                        ? Colors.black.withOpacity(isSelected ? 1 : 0.5)
                        : Colors.white.withOpacity(isSelected ? 1 : 0.5),
                  ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
