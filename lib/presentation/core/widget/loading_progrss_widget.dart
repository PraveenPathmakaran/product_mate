import 'package:flutter/material.dart';
import 'package:productmate/presentation/core/widget/widgets.dart';

import '../resource_manager/color_manager.dart';

class LoadingProgress extends StatelessWidget {
  final bool isSaving;

  const LoadingProgress({
    super.key,
    required this.isSaving,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: Container(
        color: Colors.transparent,
        width: double.infinity,
        height: double.infinity,
        child: Visibility(
          visible: isSaving,
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(
                  color: ColorManager.primaryColor,
                ),
                AppSizedBox.kHeight8,
                Text(
                  'loading...',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: ColorManager.whiteColor,
                        fontSize: 16,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
