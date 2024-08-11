import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:what_if/core/utils/app_colors.dart';
import 'package:what_if/core/utils/fonts.dart';
import 'package:what_if/core/utils/styles.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({
    super.key,
    this.enableButton2 = false,
    this.onTap,
    this.text,
    this.iconImage,
  });
  final String? text;
  final bool? enableButton2;
  final void Function()? onTap;
  final String? iconImage;

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          gradient: const RadialGradient(
            colors: AppColors.borderGradientColors1,
            radius: 1,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: enableButton2 == true ? null : const Color(0XFF23094C),
            borderRadius: BorderRadius.circular(16),
            gradient: enableButton2 == true
                ? const LinearGradient(
                    colors: AppColors.defaultGradientColors,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
                : null,
          ),
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.048,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: const LinearGradient(
                colors: AppColors.containerBgGradientColors,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Center(
              child: iconImage == null && text != null
                  ? Text(
                      text!,
                      style: Styles.textStyle16.copyWith(
                        fontFamily: context.locale.toString() == 'en'
                            ? null
                            : Fonts.tajawalFont,
                      ),
                      textAlign: TextAlign.center,
                    )
                  : iconImage != null && text != null
                      ? Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Spacer(flex: 1),
                            Container(
                              alignment: Alignment.center,
                              // color: Colors.black,
                              child: Image.asset(
                                iconImage!,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Spacer(flex: 1),
                            Text(
                              text!,
                              style: Styles.textStyle16.copyWith(
                                fontFamily: context.locale.toString() == 'en'
                                    ? null
                                    : Fonts.tajawalFont,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const Spacer(flex: 1),
                            const SizedBox(width: 5),
                          ],
                        )
                      : Center(
                          child: Image.asset(
                            iconImage!,
                            fit: BoxFit.fill,
                          ),
                        ),
            ),
          ),
        ),
      ),
    );
  }
}
