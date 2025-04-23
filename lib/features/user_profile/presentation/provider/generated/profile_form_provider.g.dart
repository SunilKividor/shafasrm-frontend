// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../profile_form_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileFormHash() => r'a780288422d54eb831768ae482bbf4f77f8c8b9b';

/// See also [ProfileForm].
@ProviderFor(ProfileForm)
final profileFormProvider =
    NotifierProvider<ProfileForm, UserProfileFormModel>.internal(
      ProfileForm.new,
      name: r'profileFormProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$profileFormHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ProfileForm = Notifier<UserProfileFormModel>;
String _$profileFormPageCurrentIndexHash() =>
    r'd486ee181f01f22bc6c94dc352805ba880f6f11e';

/// See also [ProfileFormPageCurrentIndex].
@ProviderFor(ProfileFormPageCurrentIndex)
final profileFormPageCurrentIndexProvider =
    AutoDisposeNotifierProvider<ProfileFormPageCurrentIndex, int>.internal(
      ProfileFormPageCurrentIndex.new,
      name: r'profileFormPageCurrentIndexProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$profileFormPageCurrentIndexHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ProfileFormPageCurrentIndex = AutoDisposeNotifier<int>;
String _$profileFormPageControllerHash() =>
    r'c8157d9fec861240542b47257e4b10a488d1ca56';

/// See also [ProfileFormPageController].
@ProviderFor(ProfileFormPageController)
final profileFormPageControllerProvider = AutoDisposeNotifierProvider<
  ProfileFormPageController,
  PageController
>.internal(
  ProfileFormPageController.new,
  name: r'profileFormPageControllerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$profileFormPageControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProfileFormPageController = AutoDisposeNotifier<PageController>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
