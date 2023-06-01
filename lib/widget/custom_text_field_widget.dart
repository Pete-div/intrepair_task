import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final Function(String)? onSubmitted;
  final Function(String)? onchange;
  final String? hintText;
  final Color? backgroundColor;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final bool hasBorder;
  final TextStyle? labelStyle;
  final String? labelText;
  final TextInputType? keyboardType;
  final TextStyle? hintTextStyle;
  final BorderRadius? borderRadius;
  final Color? tappedColor;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final VoidCallback? onTap;
  final bool autofocus;
  final bool? enabled;
  final bool readOnly;
  final List<TextInputFormatter>? textInputFormatters;

  const CustomTextField({
    Key? key,
    this.textInputAction,
    this.focusNode,
    this.controller,
    this.onSubmitted,
    this.hintText,
    this.backgroundColor,
    this.validator,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.suffixIconColor,
    this.prefixIconColor,
    this.hasBorder = false,
    this.keyboardType,
    this.hintTextStyle,
    this.labelStyle,
    this.labelText,
    this.borderRadius,
    this.tappedColor,
    this.minLines,
    this.maxLines,
    this.onchange,
    this.maxLength,
    this.onTap,
    this.autofocus = false,
    this.readOnly = false,
    this.enabled,
    this.textInputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      onChanged: onchange,
      enabled: enabled,
      autovalidateMode: AutovalidateMode.disabled,
      autofocus: autofocus,
      controller: controller,
      inputFormatters: textInputFormatters,
      validator: validator,
      focusNode: focusNode,
      minLines: minLines,
      maxLines: maxLines,
      maxLength: maxLength,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      readOnly: readOnly,
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor ?? Colors.white,
        suffixIcon: suffixIcon,
        suffixIconColor:
            suffixIconColor ?? Theme.of(context).colorScheme.primary,
        prefixIcon: prefixIcon,
        labelText: labelText,
        labelStyle: labelStyle ?? Theme.of(context).textTheme.bodyMedium,
        prefixIconColor:
            prefixIconColor ?? Theme.of(context).colorScheme.primary,
        hintText: hintText,
        hintStyle: hintTextStyle ?? Theme.of(context).textTheme.bodySmall,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE5E9F2)),
          borderRadius: borderRadius ?? BorderRadius.zero,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF781596)),
          borderRadius: borderRadius ?? BorderRadius.zero,
        ),
      ),
    );
  }
}
