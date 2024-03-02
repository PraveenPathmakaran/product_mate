import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:productmate/application/sign_in/sign_in_bloc.dart';
import 'package:productmate/injection.dart';
import 'package:productmate/presentation/core/resource_manager/color_manager.dart';
import 'package:productmate/presentation/core/resource_manager/string_manager.dart';
import 'package:productmate/presentation/core/resource_manager/style_manager.dart';
import 'package:productmate/presentation/core/widget/utils.dart';
import 'package:productmate/presentation/core/widget/widgets.dart';

import '../app_router.dart';
import '../core/resource_manager/value_manger.dart';
import '../core/widget/button_widget.dart';
import '../core/widget/loading_progrss_widget.dart';
import '../core/widget/text_formfield_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: BlocBuilder<SignInBloc, SignInState>(
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
                child: Center(
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p30),
                child: SizedBox(
                  child: Stack(
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TopWidget(),
                          FormFieldWidget(),
                          ButtonAreaWidget(),
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: LoadingProgress(
                          isSaving: state.isLoading,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
          );
        },
      ),
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(StringManager.welcomeBackYou,
        style: getRegularStyle(color: ColorManager.whiteColor));
  }
}

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
          AppSizedBox.kHeight15,
          Row(
            children: <Widget>[
              Expanded(child: Divider(color: ColorManager.whiteColor)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(StringManager.orCreateAccount,
                    style: getRegularStyle(color: ColorManager.whiteColor)),
              ),
              Expanded(child: Divider(color: ColorManager.whiteColor)),
            ],
          ),
          AppSizedBox.kHeight15,
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
