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
  $userDetailsLoadingScreenRoute,
  $profilePhotoUploadScreenRoute,
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

RouteBase get $userDetailsLoadingScreenRoute => GoRouteData.$route(
  path: '/auth/user_details/loading',

  factory: $UserDetailsLoadingScreenRouteExtension._fromState,
);

extension $UserDetailsLoadingScreenRouteExtension
    on UserDetailsLoadingScreenRoute {
  static UserDetailsLoadingScreenRoute _fromState(GoRouterState state) =>
      const UserDetailsLoadingScreenRoute();

  String get location => GoRouteData.$location('/auth/user_details/loading');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $profilePhotoUploadScreenRoute => GoRouteData.$route(
  path: '/auth/profile/upload',

  factory: $ProfilePhotoUploadScreenRouteExtension._fromState,
);

extension $ProfilePhotoUploadScreenRouteExtension
    on ProfilePhotoUploadScreenRoute {
  static ProfilePhotoUploadScreenRoute _fromState(GoRouterState state) =>
      const ProfilePhotoUploadScreenRoute();

  String get location => GoRouteData.$location('/auth/profile/upload');

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

String _$routerHash() => r'88a3a215d06369a0b33fd1a43d1495a5391b0670';

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
