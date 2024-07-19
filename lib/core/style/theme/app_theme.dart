import 'package:flutter/material.dart';
import 'package:omran_store/core/style/colors/colors_dark.dart';
import 'package:omran_store/core/style/colors/colors_light.dart';

import 'package:omran_store/core/style/theme/color_extension.dart';
import 'package:omran_store/core/style/theme/assets_extension.dart';

ThemeData themeDark(){
  return ThemeData(
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark,MyAssets.dark],
    scaffoldBackgroundColor: ColorsDark.mainColor,
    useMaterial3: true,
  );
}


ThemeData themeLight(){
  return ThemeData(
    extensions: const <ThemeExtension<dynamic>>[MyColors.light,MyAssets.light],
    scaffoldBackgroundColor: ColorsLight.mainColor,
    useMaterial3: true,
  );
}