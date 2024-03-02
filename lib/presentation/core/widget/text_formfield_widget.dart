import 'package:flutter/material.dart';

import '../resource_manager/color_manager.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hint;
  final bool obscureText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  const TextFormFieldWidget({
    super.key,
    required this.hint,
    this.obscureText = false,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      style: TextStyle(color: ColorManager.whiteColor),
      decoration: InputDecoration(
        hintText: hint,
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
