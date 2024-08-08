import 'package:flutter/material.dart';
import 'package:what_if/core/utils/app_colors.dart';
import 'package:what_if/core/utils/styles.dart';

class SubCategoryItem extends StatelessWidget {
  const SubCategoryItem({
    super.key,
    required this.isSelected,
  });
  final bool isSelected;

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
        padding: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isSelected ? Colors.white : AppColors.unSelectedColor,
          image: const DecorationImage(
            image: AssetImage(
              'assets/images/parcelona.png',
            ),
          ),
        ),
        child: Text(
          ' Barcelona',
          style: Styles.textStyle16Shrikh.copyWith(
            color: Colors.black.withOpacity(isSelected ? 1 : 0.6),
          ),
        ),
      ),
    );
  }
}
