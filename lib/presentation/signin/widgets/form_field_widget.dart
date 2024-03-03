import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../application/sign_in/sign_in_bloc.dart';
import '../../app_router.dart';
import '../../core/resource_manager/color_manager.dart';
import '../../core/resource_manager/string_manager.dart';
import '../../core/widget/text_formfield_widget.dart';
import '../../core/widget/utils.dart';
import '../../core/widget/widgets.dart';

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: BlocListener<SignInBloc, SignInState>(
              listener: (context, state) {
                state.authFailureOrSuccessOption.fold(
                    () {},
                    (failure) => failure.fold(
                            (f) => CustomSnackbar.show(
                                context,
                                f.map(
                                  serverError: (_) =>
                                      StringManager.somethingWentWrong,
                                  emailAlreadyInUse: (_) =>
                                      StringManager.emailAlreadyInUse,
                                  invalidEmailAndPasswordCombination: (_) =>
                                      StringManager.invalidEmailOrPassword,
                                ),
                                ColorManager.errorColor), (_) {
                          context.go(RouteNames.createLogin);
                        }));
              },
              child: Column(
                children: [
                  AppSizedBox.kHeight25,
                  TextFormFieldWidget(
                    hint: StringManager.email,
                    onChanged: (value) => context
                        .read<SignInBloc>()
                        .add(SignInEvent.emailChanged(value)),
                    validator: (_) => context
                        .read<SignInBloc>()
                        .state
                        .emailAddress
                        .value
                        .fold(
                            (failure) => failure.maybeMap(
                                  orElse: () => null,
                                  invalidEmail: (_) =>
                                      StringManager.invalidEmail,
                                ),
                            (_) => null),
                    prefixIcon: const Icon(
                      Icons.email,
                    ),
                  ),
                  AppSizedBox.kHeight15,
                  TextFormFieldWidget(
                    hint: StringManager.password,
                    obscureText: true,
                    onChanged: (value) => context
                        .read<SignInBloc>()
                        .add(SignInEvent.passwordChanged(value)),
                    validator: (_) =>
                        context.read<SignInBloc>().state.password.value.fold(
                            (failure) => failure.maybeMap(
                                  orElse: () => null,
                                  shortPassword: (_) =>
                                      StringManager.shortPassword,
                                ),
                            (_) => null),
                    prefixIcon: const Icon(
                      Icons.lock,
                    ),
                  ),
                  AppSizedBox.kHeight25,
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}