import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:what_if/core/utils/app_images.dart';
import 'package:what_if/core/utils/app_strings.dart';
import 'package:what_if/features/settings/presentation/manager/settings_cubit.dart';
import 'select_lang_item.dart';

class SelectLangBuilder extends StatefulWidget {
  const SelectLangBuilder({super.key});

  @override
  State<SelectLangBuilder> createState() => _SelectLangBuilderState();
}

class _SelectLangBuilderState extends State<SelectLangBuilder> {
  bool isFirstTime = true;
  late String currentLanguage;
  late bool isEnglish;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var cubit = SettingsCubit.get(context);
    currentLanguage = context.locale.toString();
    cubit.isEnglish = currentLanguage == AppStrings.languageCodes[0];
    isEnglish = cubit.isEnglish;
  }

  @override
  Widget build(BuildContext context) {
    var cubit = SettingsCubit.get(context);

    return Column(
      children: [
        //Arabic
        SelectLangItem(
          title: AppStrings.arabicEG.tr(),
          flagImage: AppImages.flagEgypt,
          onTap: () {
            setState(() {
              isEnglish = false;
              cubit.isEnglish = isEnglish;
            });
          },
          isSelected: !isEnglish,
        ),
        const SizedBox(height: 24),
        //English
        SelectLangItem(
          title: AppStrings.englishUK.tr(),
          flagImage: AppImages.flagUSA,
          onTap: () {
            setState(() {
              isEnglish = true;
              cubit.isEnglish = isEnglish;
            });
          },
          isSelected: isEnglish,
        ),
      ],
    );
  }
}
