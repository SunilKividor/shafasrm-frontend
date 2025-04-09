part of 'router.dart';

@TypedGoRoute<LogInScreenRoute>(path: '/auth/login')
class LogInScreenRoute extends GoRouteData {
  const LogInScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => LogInScreen();
}

@TypedGoRoute<SignUpScreenRoute>(path: '/auth/signup')
class SignUpScreenRoute extends GoRouteData {
  const SignUpScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => SignUpScreen();
}

@TypedGoRoute<UserDetailsScreenRoute>(path: '/auth/user_details')
class UserDetailsScreenRoute extends GoRouteData {
  const UserDetailsScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      UserDetailsScreen();
}

@TypedGoRoute<ProfileCreationLoadingScreenRoute>(
  path: '/auth/user_details/loading',
)
class ProfileCreationLoadingScreenRoute extends GoRouteData {
  const ProfileCreationLoadingScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ProfileCreationLoadingScreen();
}
