import 'package:flutter/material.dart';
import 'package:h2m_destrib/core/Theming/colors.dart';
import 'package:h2m_destrib/core/Theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font14GreyRegular = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeightHelper.normal,
    color: ColorManager.grey,
  );
  static TextStyle font12GreyRegular = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeightHelper.normal,
    color: ColorManager.grey,
  );
  static TextStyle font32mainRedBold = const TextStyle(
      fontSize: 32,
      fontWeight: FontWeightHelper.bold,
      color: ColorManager.mainRed);
  static TextStyle font24mainRedBold = const TextStyle(
      fontSize: 24, fontWeight: FontWeight.bold, color: ColorManager.mainRed);
  static TextStyle font18mainRed = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: ColorManager.mainRed);

  static TextStyle font18white = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);
  static TextStyle font24white = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ColorManager.whiteColor,
  );
  static TextStyle font14LightGreyRegular = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: ColorManager.lightGrey);

  static TextStyle font14DarkRedMeduim = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeightHelper.medium,
      color: Color.fromARGB(255, 119, 12, 10));
}
