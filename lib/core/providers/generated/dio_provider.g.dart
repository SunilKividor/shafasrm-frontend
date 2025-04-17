// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../dio_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioInitializerHash() => r'3972045463fefdb8e20909944e261ab8cf047672';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [dioInitializer].
@ProviderFor(dioInitializer)
const dioInitializerProvider = DioInitializerFamily();

/// See also [dioInitializer].
class DioInitializerFamily extends Family<Dio> {
  /// See also [dioInitializer].
  const DioInitializerFamily();

  /// See also [dioInitializer].
  DioInitializerProvider call(String baseUrl) {
    return DioInitializerProvider(baseUrl);
  }

  @override
  DioInitializerProvider getProviderOverride(
    covariant DioInitializerProvider provider,
  ) {
    return call(provider.baseUrl);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'dioInitializerProvider';
}

/// See also [dioInitializer].
class DioInitializerProvider extends Provider<Dio> {
  /// See also [dioInitializer].
  DioInitializerProvider(String baseUrl)
    : this._internal(
        (ref) => dioInitializer(ref as DioInitializerRef, baseUrl),
        from: dioInitializerProvider,
        name: r'dioInitializerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$dioInitializerHash,
        dependencies: DioInitializerFamily._dependencies,
        allTransitiveDependencies:
            DioInitializerFamily._allTransitiveDependencies,
        baseUrl: baseUrl,
      );

  DioInitializerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.baseUrl,
  }) : super.internal();

  final String baseUrl;

  @override
  Override overrideWith(Dio Function(DioInitializerRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: DioInitializerProvider._internal(
        (ref) => create(ref as DioInitializerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        baseUrl: baseUrl,
      ),
    );
  }

  @override
  ProviderElement<Dio> createElement() {
    return _DioInitializerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DioInitializerProvider && other.baseUrl == baseUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, baseUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DioInitializerRef on ProviderRef<Dio> {
  /// The parameter `baseUrl` of this provider.
  String get baseUrl;
}

class _DioInitializerProviderElement extends ProviderElement<Dio>
    with DioInitializerRef {
  _DioInitializerProviderElement(super.provider);

  @override
  String get baseUrl => (origin as DioInitializerProvider).baseUrl;
}

String _$accessTokenInterceptorHash() =>
    r'ff79f591b9b624fa7ba95f42acfe05ad16494c6f';

/// See also [accessTokenInterceptor].
@ProviderFor(accessTokenInterceptor)
final accessTokenInterceptorProvider =
    Provider<AccessTokenInterceptor>.internal(
      accessTokenInterceptor,
      name: r'accessTokenInterceptorProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$accessTokenInterceptorHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AccessTokenInterceptorRef = ProviderRef<AccessTokenInterceptor>;
String _$baseDioServiceHash() => r'f50bed2b1f35052918b9ef8b4c50b84757b0d6c8';

/// See also [baseDioService].
@ProviderFor(baseDioService)
final baseDioServiceProvider = Provider<Dio>.internal(
  baseDioService,
  name: r'baseDioServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$baseDioServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BaseDioServiceRef = ProviderRef<Dio>;
String _$defaultDioServiceHash() => r'91ccd289f3f7c635910643b43ebee600ecb94b94';

/// See also [defaultDioService].
@ProviderFor(defaultDioService)
final defaultDioServiceProvider = Provider<Dio>.internal(
  defaultDioService,
  name: r'defaultDioServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$defaultDioServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DefaultDioServiceRef = ProviderRef<Dio>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
