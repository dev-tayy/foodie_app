import 'package:flutter/material.dart';
import 'package:foodie_app/utils/colors.dart';

class FormTextField extends StatelessWidget {
  FormTextField(
      {
      @required this.obscureText,
      this.keyboardType,
      this.suffixIcon,
      this.maxLines,
      @required this.controller,
      this.validator});

  final bool obscureText;
  final Widget suffixIcon;
  final TextInputType keyboardType;
  final int maxLines;

  final TextEditingController controller;
  final FormFieldValidator<String> validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      textCapitalization: TextCapitalization.none,
      autocorrect: false,
      keyboardType: keyboardType,
      maxLines: maxLines,
      obscureText: obscureText,
      style: TextStyle(
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w500,
          fontSize: 17,
          color: AppColors.black),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        isDense: true,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.black, width: 0.5),
        ),
      ),
    );
  }
}
