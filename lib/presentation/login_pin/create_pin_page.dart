import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:productmate/application/pin_login/login_pin_bloc.dart';
import 'package:productmate/presentation/app_router.dart';
import 'package:productmate/presentation/core/resource_manager/color_manager.dart';
import 'package:productmate/presentation/core/resource_manager/string_manager.dart';
import 'package:productmate/presentation/core/resource_manager/style_manager.dart';
import 'package:productmate/presentation/core/resource_manager/value_manger.dart';
import 'package:productmate/presentation/core/widget/widgets.dart';

import '../core/resource_manager/asset_manager.dart';

class CreateLoginPage extends StatelessWidget {
  const CreateLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginPinBloc, LoginPinState>(
      listener: (context, state) {
        state.pinFailureOrSuccess.fold(
            () => null,
            (a) => a.fold(
                  (l) => null,
                  (r) => context.go(RouteNames.homePage),
                ));
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p30),
              child: BlocBuilder<LoginPinBloc, LoginPinState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        AssetsManager.lockImage,
                        height: AppSize.s80,
                      ),
                      AppSizedBox.kHeight8,
                      Text(
                        StringManager.createYourNewPin,
                        style: getMediumStyle(
                          color: ColorManager.whiteColor,
                          fontSize: AppFont.f20,
                        ),
                      ),
                      Text(
                        StringManager.createYourNewPinData,
                        textAlign: TextAlign.center,
                        style: getLightStyle(color: ColorManager.greyColor),
                      ),
                      AppSizedBox.kHeight15,
                      SizedBox(
                        width: double.infinity,
                        child: Pinput(
                          length: 4,
                          focusNode: FocusNode()..requestFocus(),
                          onCompleted: (pin) {
                            context
                                .read<LoginPinBloc>()
                                .add(LoginPinEvent.pinchange(pin));
                            context
                                .read<LoginPinBloc>()
                                .add(const LoginPinEvent.createPin());
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          )),
    );
  }
}
