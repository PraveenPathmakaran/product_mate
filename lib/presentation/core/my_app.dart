import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:productmate/application/auth/auth_bloc.dart';
import 'package:productmate/application/pin_login/login_pin_bloc.dart';

import '../../injection.dart';
import '../app_router.dart';
import 'resource_manager/theme_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider<LoginPinBloc>(
          create: (context) => getIt<LoginPinBloc>(),
        ),
      ],
      child: MaterialApp.router(
        locale: DevicePreview.locale(context),
        debugShowCheckedModeBanner: false,
        title: 'Manage Product',
        theme: getApplicationTheme(),
        routerConfig: router,
      ),
    );
  }
}
