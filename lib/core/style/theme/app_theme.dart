import 'package:flutter/material.dart';
import 'package:omran_store/core/style/colors/colors_dark.dart';
import 'package:omran_store/core/style/colors/colors_light.dart';
import 'package:omran_store/core/style/fonts/font_family_helper.dart';
import 'package:omran_store/core/style/theme/assets_extension.dart';
import 'package:omran_store/core/style/theme/color_extension.dart';

ThemeData themeDark(){
  return ThemeData(
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark,MyAssets.dark],
    scaffoldBackgroundColor: ColorsDark.mainColor,
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsDark.white,
        fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
      ),
    ),
  );
}


ThemeData themeLight(){
  return ThemeData(
    extensions: const <ThemeExtension<dynamic>>[MyColors.light,MyAssets.light],
    scaffoldBackgroundColor: ColorsLight.mainColor,
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
          fontSize: 14,
          color: ColorsLight.black,
          fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
      ),
    ),
  );
}