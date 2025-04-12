// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $onboardingRoute,
  $loginSignUpScreenRoute,
  $logInScreenRoute,
  $signUpScreenRoute,
  $userDetailsScreenRoute,
  $profileCreationLoadingScreenRoute,
  $homeScreenRoute,
];

RouteBase get $onboardingRoute => GoRouteData.$route(
  path: '/onboarding',

  factory: $OnboardingRouteExtension._fromState,
);

extension $OnboardingRouteExtension on OnboardingRoute {
  static OnboardingRoute _fromState(GoRouterState state) =>
      const OnboardingRoute();

  String get location => GoRouteData.$location('/onboarding');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginSignUpScreenRoute => GoRouteData.$route(
  path: '/login-signup',

  factory: $LoginSignUpScreenRouteExtension._fromState,
);

extension $LoginSignUpScreenRouteExtension on LoginSignUpScreenRoute {
  static LoginSignUpScreenRoute _fromState(GoRouterState state) =>
      const LoginSignUpScreenRoute();

  String get location => GoRouteData.$location('/login-signup');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $logInScreenRoute => GoRouteData.$route(
  path: '/auth/login',

  factory: $LogInScreenRouteExtension._fromState,
);

extension $LogInScreenRouteExtension on LogInScreenRoute {
  static LogInScreenRoute _fromState(GoRouterState state) =>
      const LogInScreenRoute();

  String get location => GoRouteData.$location('/auth/login');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signUpScreenRoute => GoRouteData.$route(
  path: '/auth/signup',

  factory: $SignUpScreenRouteExtension._fromState,
);

extension $SignUpScreenRouteExtension on SignUpScreenRoute {
  static SignUpScreenRoute _fromState(GoRouterState state) =>
      const SignUpScreenRoute();

  String get location => GoRouteData.$location('/auth/signup');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $userDetailsScreenRoute => GoRouteData.$route(
  path: '/auth/user_details',

  factory: $UserDetailsScreenRouteExtension._fromState,
);

extension $UserDetailsScreenRouteExtension on UserDetailsScreenRoute {
  static UserDetailsScreenRoute _fromState(GoRouterState state) =>
      const UserDetailsScreenRoute();

  String get location => GoRouteData.$location('/auth/user_details');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $profileCreationLoadingScreenRoute => GoRouteData.$route(
  path: '/auth/user_details/loading',

  factory: $ProfileCreationLoadingScreenRouteExtension._fromState,
);

extension $ProfileCreationLoadingScreenRouteExtension
    on ProfileCreationLoadingScreenRoute {
  static ProfileCreationLoadingScreenRoute _fromState(GoRouterState state) =>
      const ProfileCreationLoadingScreenRoute();

  String get location => GoRouteData.$location('/auth/user_details/loading');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeScreenRoute => GoRouteData.$route(
  path: '/home',

  factory: $HomeScreenRouteExtension._fromState,
);

extension $HomeScreenRouteExtension on HomeScreenRoute {
  static HomeScreenRoute _fromState(GoRouterState state) =>
      const HomeScreenRoute();

  String get location => GoRouteData.$location('/home');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'cdf33422d1ead8259913d433e22579a9e24bed46';

/// See also [router].
@ProviderFor(router)
final routerProvider = Provider<GoRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RouterRef = ProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
