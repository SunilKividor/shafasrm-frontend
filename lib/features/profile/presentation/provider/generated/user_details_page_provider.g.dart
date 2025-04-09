// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_details_page_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userDetailsCurrentPageHash() =>
    r'85882e2f73311680600bde0ffef7808e0e86d0eb';

/// See also [UserDetailsCurrentPage].
@ProviderFor(UserDetailsCurrentPage)
final userDetailsCurrentPageProvider =
    NotifierProvider<UserDetailsCurrentPage, int>.internal(
      UserDetailsCurrentPage.new,
      name: r'userDetailsCurrentPageProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$userDetailsCurrentPageHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$UserDetailsCurrentPage = Notifier<int>;
String _$userDetailsPageControllerHash() =>
    r'db888cf29464e463110167ba3bfa7995b44d9677';

/// See also [UserDetailsPageController].
@ProviderFor(UserDetailsPageController)
final userDetailsPageControllerProvider = AutoDisposeNotifierProvider<
  UserDetailsPageController,
  PageController
>.internal(
  UserDetailsPageController.new,
  name: r'userDetailsPageControllerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$userDetailsPageControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserDetailsPageController = AutoDisposeNotifier<PageController>;
String _$userDetailsPageControllersHash() =>
    r'45c19ad8f608388837a6b95e82c9a1cf580c8073';

/// See also [UserDetailsPageControllers].
@ProviderFor(UserDetailsPageControllers)
final userDetailsPageControllersProvider = AutoDisposeNotifierProvider<
  UserDetailsPageControllers,
  List<TextEditingController>
>.internal(
  UserDetailsPageControllers.new,
  name: r'userDetailsPageControllersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$userDetailsPageControllersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserDetailsPageControllers =
    AutoDisposeNotifier<List<TextEditingController>>;
String _$userDetailsStateHash() => r'4dd961288c4417cd5b38afafef036e0d8aca59d6';

/// See also [UserDetailsState].
@ProviderFor(UserDetailsState)
final userDetailsStateProvider =
    NotifierProvider<UserDetailsState, UserDetailsModel>.internal(
      UserDetailsState.new,
      name: r'userDetailsStateProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$userDetailsStateHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$UserDetailsState = Notifier<UserDetailsModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
