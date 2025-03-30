import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shafasrm_app/features/authentication/presentation/screens/auth_screen.dart';
import 'package:shafasrm_app/features/onboarding/onboarding_screen.dart';

part 'generated/router.g.dart';

part 'onboarding_route.dart';
part 'auth_route.dart';

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: const OnboardingRoute().location,
    routes: $appRoutes,
    errorBuilder:
        (context, state) =>
            const Scaffold(body: Center(child: Text('Page not found'))),
  );
}
