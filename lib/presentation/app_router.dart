import 'package:go_router/go_router.dart';
import 'package:productmate/presentation/core/resource_manager/string_manager.dart';
import 'package:productmate/presentation/home/home_page.dart';
import 'package:productmate/presentation/login_pin/create_pin_page.dart';
import 'package:productmate/presentation/login_pin/login_pin_page.dart';
import 'package:productmate/presentation/signin/sign_in_page.dart';
import 'package:productmate/presentation/splash/splash_page.dart';

import 'core/widget/error_widget.dart';
import 'product_form/product_form_page.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: RouteNames.home,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: RouteNames.homePage,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: RouteNames.signInPage,
      builder: (context, state) => const SignInPage(),
    ),
    GoRoute(
      path: RouteNames.pinLoginPage,
      builder: (context, state) => const PinLoginPage(),
    ),
    GoRoute(
      path: RouteNames.createLogin,
      builder: (context, state) => const CreateLoginPage(),
    ),
    GoRoute(
      path: RouteNames.error,
      builder: (context, state) => const AppErrorWidget(
        errorMessage: StringManager.somethingWentWrong,
      ),
    ),
    GoRoute(
      path: RouteNames.productForm,
      builder: (context, state) => const ProductFormPage(),
    ),
  ],
);

class RouteNames {
  static const String home = '/';
  static const String homePage = '/homePage';
  static const String signInPage = '/signin';
  static const String pinLoginPage = '/pinlogin';
  static const String createLogin = '/creatlogin';
  static const String error = '/error';
  static const String productForm = '/productForm';
}