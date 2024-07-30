import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:what_if/core/utils/app_images.dart';
import 'package:what_if/core/utils/app_strings.dart';
import '../../../config/routes/route_name.dart';
import '../styles.dart';
import 'custom_gradien_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 55, bottom: 22),
      child: Row(
        children: [
          Bounceable(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              context.locale.toString() == AppStrings.languageCodes[0]
                  ? AppImages.arrowBackIcon
                  : AppImages.arrowBackIconAR,
            ),
          ),
          const Spacer(flex: 1),
          CustomGradientWidget(
            child: Text(
              title.tr(),
              style: Styles.textStyle24,
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(flex: 1),
          Bounceable(
            onTap: () {
              final String currentRoute =
                  ModalRoute.of(context)!.settings.name!;
              if (currentRoute != RoutesName.settingsView) {
                Navigator.pushNamed(context, RoutesName.settingsView);
              }
            },
            child: Image.asset(
              AppImages.settingsIcon,
            ),
          ),
        ],
      ),
    );
  }
}
