import 'package:flutter/material.dart';
import 'package:h2m_destrib/core/Theming/colors.dart';
import 'package:h2m_destrib/core/Theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font12GreyRegular = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeightHelper.normal,
    color: ColorManager.mainGrey,
  );
  static TextStyle font12WhiteRegular = const TextStyle(
      fontSize: 12, fontWeight: FontWeightHelper.normal, color: Colors.white);
  static TextStyle font14GreyRegular = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeightHelper.normal,
    color: ColorManager.mainGrey,
  );
  static TextStyle font14whiteBold = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white);
  static TextStyle font14LightGreyRegular = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: ColorManager.lightGrey);

  static TextStyle font14DarkRedMeduim = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeightHelper.medium,
      color: Color.fromARGB(255, 119, 12, 10));
  static TextStyle font14DarkRedBold = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeightHelper.bold,
      color: Color.fromARGB(255, 119, 12, 10));
  static TextStyle font14MainRedbold = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeightHelper.bold,
      color: ColorManager.mainRed);

  static TextStyle font14MainBlueBold = const TextStyle(
      fontSize: 14,
      color: ColorManager.mainBlue,
      fontWeight: FontWeightHelper.bold);

  static TextStyle font18mainGoldBold = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: ColorManager.mainGold);

  static TextStyle font18mainRedBold = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: ColorManager.mainRed);

  static TextStyle font18white = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);

  static TextStyle font24white = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ColorManager.mainWhite,
  );
  static TextStyle font24mainRedBold = const TextStyle(
      fontSize: 24, fontWeight: FontWeight.bold, color: ColorManager.mainRed);
  static TextStyle font14mainRedBold = const TextStyle(
      fontSize: 24, fontWeight: FontWeight.bold, color: ColorManager.mainRed);

  static TextStyle font32mainRedBold = const TextStyle(
      fontSize: 32,
      fontWeight: FontWeightHelper.bold,
      color: ColorManager.mainRed);
}
