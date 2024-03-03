import 'package:flutter/material.dart';

import '../../core/resource_manager/asset_manager.dart';
import '../../core/resource_manager/color_manager.dart';
import '../../core/resource_manager/string_manager.dart';
import '../../core/resource_manager/style_manager.dart';
import '../../core/resource_manager/value_manger.dart';
import '../../core/widget/widgets.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AssetsManager.loginImage,
          height: AppSize.s200,
        ),
        AppSizedBox.kHeight20,
        Text(
          StringManager.welcomeBack,
          style: getMediumStyle(
            color: ColorManager.whiteColor,
            fontSize: AppFont.f30,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
