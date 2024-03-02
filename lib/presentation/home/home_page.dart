import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:productmate/presentation/app_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            child: const Text("Home Screen"),
            onTap: () {
              context.push(RouteNames.productForm);
              // context.read<AuthBloc>().add(const AuthEvent.signedOut());
            }),
      ),
    );
  }
}
