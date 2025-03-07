import 'package:flutter/material.dart';
import 'package:mydaymate/core/theme/app_colors.dart';
import '../core/utils/devices.dart';

class CustomTextfield extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final bool? readOnly;
  final int? maxLines;

  const CustomTextfield({
    super.key,
    this.hintText,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.onChanged,
    this.readOnly = false,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DeviceLayout.getProportionateScreenHeight(56),
      child: TextField(
        controller: controller,
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        readOnly: readOnly ?? false,
        onChanged: onChanged,
        maxLines: maxLines,
        style: TextStyle(fontSize: DeviceLayout.fontSize(14)),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColors.backgroundColor.withOpacity(0.7),
            fontSize: DeviceLayout.fontSize(14),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.symmetric(
            horizontal: DeviceLayout.spacing(16),
            vertical: DeviceLayout.spacing(12),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(DeviceLayout.spacing(15)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(DeviceLayout.spacing(15)),
            borderSide: BorderSide(color: AppColors.backgroundColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(DeviceLayout.spacing(15)),
            borderSide: BorderSide(color: AppColors.primary),
          ),
        ),
      ),
    );
  }
}
