import 'package:flutter/material.dart';
import 'package:omran_store/core/language/app_localizations.dart';
import 'package:omran_store/core/style/theme/assets_extension.dart';
import 'package:omran_store/core/style/theme/color_extension.dart';

extension ContextExt on BuildContext {

  // color
  MyColors get color => Theme.of(this).extension<MyColors>()!;
  //Images
  MyAssets get assets => Theme.of(this).extension<MyAssets>()!;
  //language
  String translate(String langKey){
    return AppLocalizations.of(this)!.translate(langKey).toString();
  }
  //style
  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;



  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() => Navigator.of(this).pop();
}
