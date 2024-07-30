import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:what_if/core/utils/app_colors.dart';
import 'package:what_if/core/utils/app_images.dart';
import 'package:what_if/core/utils/styles.dart';

class SelectLangItem extends StatelessWidget {
  const SelectLangItem({
    super.key,
    this.onTap,
    this.isSelected = false,
    required this.title,
    required this.flagImage,
  });
  final void Function()? onTap;
  final bool? isSelected;
  final String title;
  final String flagImage;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Bounceable(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1000),
        padding: isSelected == true ? const EdgeInsets.all(4) : null,
        decoration: isSelected == true
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                gradient: const LinearGradient(
                  colors: AppColors.categotyBgGradientColors,
                ),
              )
            : null,
        child: Container(
          width: mediaQuery.width,
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
            boxShadow: const [
              AppColors.selectLangBoxShadow,
            ],
          ),
          child: Row(
            children: [
              Image.asset(flagImage),
              const SizedBox(width: 10),
              Text(
                title,
                style: Styles.textStyle16Inter,
              ),
              const Spacer(),
              SizedBox(
                height: 32,
                child: isSelected == true
                    ? Image.asset(
                        AppImages.ellipsRadio,
                      )
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
