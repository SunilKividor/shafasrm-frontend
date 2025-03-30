import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shafasrm_app/core/api/base_api_repo.dart';
import 'package:shafasrm_app/features/authentication/data/login_req.dart';
import 'package:shafasrm_app/features/authentication/models/login_req_model.dart';

class LoginRepo with BaseApiRepository{
  final LoginRemote loginClient;

  LoginRepo(this.loginClient);

  Future<Either<DioException,Map<String,String>>> login(LoginReqModel loginReqModel) async {
    final response = getApiResponse<Map<String,String>>(
      request: () => loginClient.login(loginReqModel,'application/json')
      );
      return response;
  }
}