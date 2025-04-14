// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addUserDetailsRemoteHash() =>
    r'72f8ca89c3120d829c8f612a8dc642f29fb727d3';

/// See also [addUserDetailsRemote].
@ProviderFor(addUserDetailsRemote)
final addUserDetailsRemoteProvider =
    AutoDisposeProvider<AddUserDetailsRemote>.internal(
      addUserDetailsRemote,
      name: r'addUserDetailsRemoteProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$addUserDetailsRemoteHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AddUserDetailsRemoteRef = AutoDisposeProviderRef<AddUserDetailsRemote>;
String _$userDetailsRepoHash() => r'be16270fb7c69b7e7d65df2916bb4bd247df998b';

/// See also [userDetailsRepo].
@ProviderFor(userDetailsRepo)
final userDetailsRepoProvider = AutoDisposeProvider<UserDetailsRepo>.internal(
  userDetailsRepo,
  name: r'userDetailsRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$userDetailsRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserDetailsRepoRef = AutoDisposeProviderRef<UserDetailsRepo>;
String _$userDetailsHash() => r'e1dd8a4d98abb396014868ce519fe4bd6a2f21af';

/// See also [UserDetails].
@ProviderFor(UserDetails)
final userDetailsProvider =
    AutoDisposeNotifierProvider<UserDetails, UserDetailsModel>.internal(
      UserDetails.new,
      name: r'userDetailsProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$userDetailsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$UserDetails = AutoDisposeNotifier<UserDetailsModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
