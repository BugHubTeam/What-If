import 'dart:developer';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:what_if/core/utils/app_strings.dart';
import 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());

  static SettingsCubit get(context) => BlocProvider.of<SettingsCubit>(context);
  late bool isEnglish;

  void changeLanguage(BuildContext context) {
    if (isEnglish == false &&
        context.locale.toString() == AppStrings.languageCodes[0]) {
      //change to Arabic
      context.setLocale(
        Locale(AppStrings.languageCodes[1]),
      );
    } else if (isEnglish == true &&
        context.locale.toString() == AppStrings.languageCodes[1]) {
      //change to English
      context.setLocale(
        Locale(AppStrings.languageCodes[0]),
      );
    }

    log(context.locale.toString());
    emit(ChangeLanguageState());
  }
}
