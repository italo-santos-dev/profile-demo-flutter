import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_fonts.dart';

class TextStyles {
  TextStyles._();

  static TextStyle get heading => TextStyle(
        fontFamily: Fonts.nexa_bold,
        fontSize: 45.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.0,
      );

  // ignore: non_constant_identifier_names
  static TextStyle get sub_heading => TextStyle(
        color: AppColors.white,
        fontFamily: Fonts.product,
        fontSize: 17.0, //17.0
        letterSpacing: 1.2,
      );

  static TextStyle get company => TextStyle(
        fontFamily: Fonts.product,
        color: AppColors.grey,
        height: 1.5,
        fontSize: 15.0, //15.0
        letterSpacing: 1.0,
      );

  static TextStyle get body => TextStyle(
        fontFamily: Fonts.product,
        color: AppColors.grey,
        height: 1.5,
        fontSize: 12.0, //12.0
        letterSpacing: 1.0,
      );

  static TextStyle get body1 => TextStyle(
        fontFamily: Fonts.product,
        color: AppColors.grey,
        height: 1.5,
        fontSize: 10.0, //10.0
        letterSpacing: 1.0,
      );

  static TextStyle get chip => TextStyle(
        fontFamily: Fonts.product,
        color: AppColors.grey,
        height: 1.5,
        fontSize: 12.0, //12.0
        letterSpacing: 1.0,
      );
}
