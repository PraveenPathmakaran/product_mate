import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:productmate/application/pin_login/login_pin_bloc.dart';
import 'package:productmate/presentation/core/resource_manager/value_manger.dart';

import '../app_router.dart';
import '../core/resource_manager/asset_manager.dart';
import '../core/resource_manager/color_manager.dart';
import '../core/resource_manager/string_manager.dart';
import '../core/resource_manager/style_manager.dart';
import '../core/widget/widgets.dart';

class PinLoginPage extends StatelessWidget {
  const PinLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginPinBloc, LoginPinState>(
      listener: (context, state) {
        state.pinFailureOrSuccess.fold(
            () => null,
            (a) => a.fold(
                  (l) => l.maybeMap(
                    orElse: () => null,
                    incorrectPin: (_) {
                      final height = MediaQuery.of(context).size.height;
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        behavior: SnackBarBehavior.floating,
                        content: const Text(StringManager.incorrectPin),
                        backgroundColor: ColorManager.errorColor,
                        duration: const Duration(seconds: 2),
                        margin: EdgeInsets.only(
                            bottom: height - (height * .10),
                            left: 10,
                            right: 10),
                      ));
                    },
                  ),
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
                        StringManager.enterYourPin,
                        style: getMediumStyle(
                          color: ColorManager.whiteColor,
                          fontSize: AppFont.f20,
                        ),
                      ),
                      Text(
                        StringManager.pleaseEnterYourPin,
                        textAlign: TextAlign.center,
                        style: getLightStyle(color: ColorManager.greyColor),
                      ),
                      AppSizedBox.kHeight15,
                      SizedBox(
                        width: double.infinity,
                        child: Pinput(
                          focusNode: FocusNode()..requestFocus(),
                          length: 4,
                          onCompleted: (pin) {
                            context
                                .read<LoginPinBloc>()
                                .add(LoginPinEvent.pinchange(pin));
                            context
                                .read<LoginPinBloc>()
                                .add(const LoginPinEvent.validatePin());
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
