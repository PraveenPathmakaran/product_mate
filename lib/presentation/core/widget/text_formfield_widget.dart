import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resource_manager/color_manager.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hint;
  final bool obscureText;
  final Widget? prefixIcon;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatter;

  const TextFormFieldWidget({
    super.key,
    required this.hint,
    this.obscureText = false,
    this.onChanged,
    this.validator,
    this.prefixIcon,
    this.focusNode,
    this.keyboardType,
    this.inputFormatter,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      focusNode: focusNode,
      obscureText: obscureText,
      style: TextStyle(color: ColorManager.whiteColor),
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: prefixIcon,
      ),
      onChanged: onChanged,
      validator: validator,
      inputFormatters: inputFormatter,
    );
  }
}
