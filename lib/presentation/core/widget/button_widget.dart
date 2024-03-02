import 'package:flutter/material.dart';

import '../resource_manager/value_manger.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const ButtonWidget({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(AppSize.s18),
            child: Text(text),
          )),
    );
  }
}
