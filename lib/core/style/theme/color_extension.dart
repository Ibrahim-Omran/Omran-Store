import 'package:flutter/material.dart';
import 'package:omran_store/core/style/colors/colors_dark.dart';
import 'package:omran_store/core/style/colors/colors_light.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.minColor,
  });

  final Color? minColor;

  @override
  ThemeExtension<MyColors> copyWith({
    Color? minColor,
  }) {
    return MyColors(
      minColor: minColor,
    );
  }

  @override
  ThemeExtension<MyColors> lerp(
    covariant ThemeExtension<MyColors>? other,
    double t,
  ) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
      minColor: minColor,
    );
  }
  
  static const MyColors dark = MyColors(
    minColor: ColorsDark.mainColor,
  );

  static const MyColors light = MyColors(
    minColor: ColorsLight.mainColor,
  );
}
