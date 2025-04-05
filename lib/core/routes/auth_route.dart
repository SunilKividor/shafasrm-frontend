
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