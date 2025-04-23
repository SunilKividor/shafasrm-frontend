// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../swipe_feed_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$swipeFeedRemoteHash() => r'3161fd050fa74c72d660a30f4c289223be4d3dc6';

/// See also [swipeFeedRemote].
@ProviderFor(swipeFeedRemote)
final swipeFeedRemoteProvider = AutoDisposeProvider<SwipeFeedRemote>.internal(
  swipeFeedRemote,
  name: r'swipeFeedRemoteProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$swipeFeedRemoteHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SwipeFeedRemoteRef = AutoDisposeProviderRef<SwipeFeedRemote>;
String _$swipeFeedRepoHash() => r'35a2d42942bdea69aa54e7720a89427f042956a5';

/// See also [swipeFeedRepo].
@ProviderFor(swipeFeedRepo)
final swipeFeedRepoProvider = AutoDisposeProvider<SwipeFeedRepo>.internal(
  swipeFeedRepo,
  name: r'swipeFeedRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$swipeFeedRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SwipeFeedRepoRef = AutoDisposeProviderRef<SwipeFeedRepo>;
String _$swipeFeedHash() => r'db9a9114836b0475a06abc14c4b6b90569c2d59e';

/// See also [SwipeFeed].
@ProviderFor(SwipeFeed)
final swipeFeedProvider = AutoDisposeNotifierProvider<
  SwipeFeed,
  AsyncValue<List<SwipeFeedModel>>
>.internal(
  SwipeFeed.new,
  name: r'swipeFeedProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$swipeFeedHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SwipeFeed = AutoDisposeNotifier<AsyncValue<List<SwipeFeedModel>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
