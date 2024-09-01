import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h2m_destrib/core/Theming/colors.dart';
import 'package:h2m_destrib/core/Theming/styles.dart';

class AppFormTextField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputStyle;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final String? hintText;
  final Color? backgroundColor;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final Function(String?) validator;

  const AppFormTextField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputStyle,
    this.hintStyle,
    this.isObscureText,
    this.suffixIcon,
    required this.hintText,
    this.backgroundColor,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderSide:
                    const BorderSide(color: ColorManager.mainBlue, width: 1.5),
                borderRadius: BorderRadius.circular(16)),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                    color: ColorManager.lighterGrey, width: 1.0),
                borderRadius: BorderRadius.circular(16)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.red, width: 1.5)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.red, width: 1.5)),
        filled: true,
        fillColor: backgroundColor ?? ColorManager.moreLightGrey,
        hintStyle: hintStyle ?? TextStyles.font14DarkRedMeduim,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkRedMeduim,
      controller: controller,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
