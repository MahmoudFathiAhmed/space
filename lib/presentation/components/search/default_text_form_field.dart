import 'package:flutter/material.dart';
import 'package:space_project/core/utils/app_colors.dart';

class DefaultTextFormField extends StatelessWidget {
  final String hint;
  final double radius;
  final Color borderColor;
  final Color fillColor;
  final double contentPadding;
  final TextInputType type;
  final bool isPassword;
  final bool isFilled;
  final TextEditingController controller;
  final Widget prefixIcon;
  // final Function(String) onChanged;

  const DefaultTextFormField({
    Key? key,
    required this.hint,
    required this.radius,
    required this.type,
    required this.controller,
    this.isPassword = false,
    required this.prefixIcon,
    // required this.onChanged,
    required this.borderColor,
    this.contentPadding = 0,
    required this.fillColor,
    required this.isFilled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      maxLines: 1,
      cursorColor: AppColors.offWhite,
      // onChanged: onChanged,
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: isFilled,
        fillColor: fillColor,
        prefixIcon: prefixIcon,
        hintText: hint,
        hintStyle: TextStyle(color: AppColors.offWhite, fontSize: 17),
        contentPadding: EdgeInsets.symmetric(horizontal: contentPadding),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: borderColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
