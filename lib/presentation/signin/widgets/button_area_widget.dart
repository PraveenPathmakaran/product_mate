import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:productmate/presentation/core/resource_manager/value_manger.dart';

import '../../../application/sign_in/sign_in_bloc.dart';
import '../../core/resource_manager/color_manager.dart';
import '../../core/resource_manager/string_manager.dart';
import '../../core/resource_manager/style_manager.dart';
import '../../core/widget/button_widget.dart';
import '../../core/widget/widgets.dart';

class ButtonAreaWidget extends StatelessWidget {
  const ButtonAreaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ButtonWidget(
              text: StringManager.logIn,
              onPressed: () {
                context
                    .read<SignInBloc>()
                    .add(const SignInEvent.signInWithEmailAndPasswordPressed());
              }),
          AppSizedBox.kHeight10,
          Row(
            children: <Widget>[
              Expanded(child: Divider(color: ColorManager.whiteColor)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
                child: Text(
                  StringManager.orCreateAccount,
                  style: getRegularStyle(color: ColorManager.whiteColor),
                ),
              ),
              Expanded(child: Divider(color: ColorManager.whiteColor)),
            ],
          ),
          AppSizedBox.kHeight10,
          ButtonWidget(
            text: StringManager.signUp,
            onPressed: () {
              context
                  .read<SignInBloc>()
                  .add(const SignInEvent.registerWithEmailAndPasswordPressed());
            },
          ),
        ],
      ),
    );
  }
}
