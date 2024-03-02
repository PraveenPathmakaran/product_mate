import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:productmate/application/pin_login/login_pin_bloc.dart';
import 'package:productmate/presentation/core/resource_manager/value_manger.dart';

import '../app_router.dart';

class PinLoginPage extends StatelessWidget {
  const PinLoginPage({super.key});

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
                      SizedBox(
                        width: double.infinity,
                        child: Pinput(
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
