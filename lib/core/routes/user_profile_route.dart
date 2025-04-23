part of 'router.dart';

@TypedGoRoute<ProfileFormScreenRoute>(path: '/profile/form')
class ProfileFormScreenRoute extends GoRouteData {
  const ProfileFormScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ProfileFormScreen();
}
