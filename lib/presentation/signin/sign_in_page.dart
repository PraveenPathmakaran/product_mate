import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:productmate/application/sign_in/sign_in_bloc.dart';

import '../core/resource_manager/value_manger.dart';
import '../core/widget/loading_progrss_widget.dart';
import 'widgets/button_area_widget.dart';
import 'widgets/form_field_widget.dart';
import 'widgets/top_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
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
                    Center(
                      child: ListView(
                        shrinkWrap: true,
                        children: const <Widget>[
                          TopWidget(),
                          FormFieldWidget(),
                          ButtonAreaWidget(),
                        ],
                      ),
                    ),
                    LoadingProgress(
                      isSaving: state.isLoading,
                    ),
                  ],
                ),
              ),
            ),
          )),
        );
      },
    );
  }
}
