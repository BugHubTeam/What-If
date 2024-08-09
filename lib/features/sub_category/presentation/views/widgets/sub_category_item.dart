import 'package:flutter/material.dart';
import 'package:what_if/core/utils/app_colors.dart';
import 'package:what_if/core/utils/styles.dart';
import 'package:what_if/features/sub_category/domain/entities/sub_category_entity.dart';

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
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: isSelected ? const [AppColors.selectLangBoxShadow] : null,
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
          image: DecorationImage(
            image: subCategoryEntity?.image != null
                ? NetworkImage(
                    subCategoryEntity!.image,
                  )
                : const AssetImage('assets/images/barcelona') as ImageProvider,
            fit: BoxFit.cover,
          ),
        ),
        child: Text(
          subCategoryEntity?.name ?? ' Barcelona',
          style: Styles.textStyle16Shrikh.copyWith(
            color: Colors.black.withOpacity(isSelected ? 1 : 0.5),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
