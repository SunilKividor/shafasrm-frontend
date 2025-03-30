import 'dart:io' show HttpStatus;
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:retrofit/retrofit.dart';

typedef ApiRes<T> = Either<DioException, T>;

mixin BaseApiRepository {
  @protected
  Future<ApiRes<T>> getApiResponse<T>({
    required Future<HttpResponse<T>> Function() request,
  }) async {
    try {
      final httpResponse = await request();
      final status = httpResponse.response.statusCode ?? 400;

      if (status < HttpStatus.badRequest) {
        return Right(httpResponse.data);
      } else {
        return _createErrorResponse(httpResponse.response);
      }
    } on DioException catch (error) {
      return Left(error);
    } catch (e) {
      return _createUnexpectedErrorResponse();
    }
  }

  Left<DioException, T> _createErrorResponse<T>(Response response) {
    final error = response.data;
    final errorMessage = error['error'] ?? response.statusMessage ?? 'Unknown error';
    return Left(
      DioException(
        error: errorMessage,
        response: response,
        type: DioExceptionType.badResponse,
        requestOptions: response.requestOptions,
      ),
    );
  }

  Left<DioException, T> _createUnexpectedErrorResponse<T>() {
    return Left(DioException(
      error: 'Unexpected error',
      type: DioExceptionType.unknown,
      requestOptions: RequestOptions(),
    ));
  }
}