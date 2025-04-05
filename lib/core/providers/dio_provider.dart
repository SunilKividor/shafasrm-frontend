import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shafasrm_app/core/providers/secure_storage_provider.dart';

part 'generated/dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dioInitializer(DioInitializerRef ref,String baseUrl ) {
  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      sendTimeout: Duration(seconds: 10),
      )
  );

  return dio;
}

@Riverpod(keepAlive: true)
AccessTokenInterceptor accessTokenInterceptor(
    AccessTokenInterceptorRef ref) {
  return AccessTokenInterceptor(ref);
}

class AccessTokenInterceptor extends Interceptor {
  final Ref ref;
  AccessTokenInterceptor(this.ref);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
      final secureStorageService = ref.read(secureStorageServiceProvider);
      final accessToken = await secureStorageService.read("access_token");
      print("access_token: $accessToken");
          options.headers['Authorization'] = 'Bearer $accessToken';

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
  final dio = ref.watch(dioInitializerProvider("http://13.60.194.172:3000"));
  dio.interceptors.add(ref.watch(accessTokenInterceptorProvider));
  return dio;
}


