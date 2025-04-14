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

@TypedGoRoute<UserDetailsLoadingScreenRoute>(path: '/auth/user_details/loading')
class UserDetailsLoadingScreenRoute extends GoRouteData {
  const UserDetailsLoadingScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      UserDetailsLoadingScreen();
}

@TypedGoRoute<ProfilePhotoUploadScreenRoute>(path: '/auth/profile/upload')
class ProfilePhotoUploadScreenRoute extends GoRouteData {
  const ProfilePhotoUploadScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ProfilePhotoUpload();
}
