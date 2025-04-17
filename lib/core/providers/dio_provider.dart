import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shafasrm_app/config/env.dart';
import 'package:shafasrm_app/core/providers/secure_storage_provider.dart';

part 'generated/dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dioInitializer(DioInitializerRef ref, String baseUrl) {
  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      sendTimeout: Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    ),
  );

  return dio;
}

@Riverpod(keepAlive: true)
AccessTokenInterceptor accessTokenInterceptor(AccessTokenInterceptorRef ref) {
  return AccessTokenInterceptor(ref);
}

class AccessTokenInterceptor extends Interceptor {
  final Ref ref;
  AccessTokenInterceptor(this.ref);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final secureStorageService = ref.read(secureStorageServiceProvider);
    final accessToken = await secureStorageService.read("access_token");
    print("access_token: $accessToken");
    options.headers['Authorization'] = 'Bearer $accessToken';
    options.headers['Content-Type'] = 'application/json';

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // if (err.response?.statusCode == 401) {
    //   // Token might be expired, log out the user
    //   final authNotifier = ref.read(authenticationNotifierProvider.notifier);
    //   await authNotifier.logout();
    // }

    handler.next(err);
  }
}

@Riverpod(keepAlive: true)
Dio baseDioService(BaseDioServiceRef ref) {
  final dio = ref.watch(dioInitializerProvider(Env.apiBaseUrl));
  dio.interceptors.add(ref.watch(accessTokenInterceptorProvider));
  return dio;
}

@Riverpod(keepAlive: true)
Dio defaultDioService(BaseDioServiceRef ref) {
  final dio = Dio();
  return dio;
}
