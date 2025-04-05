import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shafasrm_app/features/authentication/presentation/screens/login_screen.dart';
import 'package:shafasrm_app/features/authentication/presentation/screens/signup_screen.dart';
import 'package:shafasrm_app/features/onboarding/login_signup_screen.dart';
import 'package:shafasrm_app/features/onboarding/onboarding_screen.dart';

part 'generated/router.g.dart';

part 'onboarding_route.dart';
part 'auth_route.dart';

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: const LoginSignUpScreenRoute().location,
    routes: $appRoutes,
    errorBuilder:
        (context, state) =>
            const Scaffold(body: Center(child: Text('Page not found'))),
  );
}
