part of 'router.dart';

@TypedGoRoute<HomeScreenRoute>(path: '/home')
class HomeScreenRoute extends GoRouteData {
  const HomeScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => HomeScreen();
}
