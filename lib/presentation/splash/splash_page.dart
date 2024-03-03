import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:productmate/application/auth/auth_bloc.dart';

import '../../application/pin_login/login_pin_bloc.dart';
import '../app_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              authenticated: (_) {
                context
                    .read<LoginPinBloc>()
                    .add(const LoginPinEvent.checkIsPinFound());
              },
              unAuthenticated: (_) {
                context.go(RouteNames.signInPage);
              },
            );
          },
        ),
        BlocListener<LoginPinBloc, LoginPinState>(
          listener: (context, state) {
            state.isPinFound.fold(
              () {},
              (a) => a
                  ? context.go(RouteNames.pinLoginPage)
                  : context.go(RouteNames.createLogin),
            );
          },
        ),
      ],
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
