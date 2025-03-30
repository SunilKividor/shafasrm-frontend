
part of 'router.dart';

@TypedGoRoute<AuthRoute>(path: '/auth')
class AuthRoute extends GoRouteData {
  const AuthRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const AuthScreen();
}