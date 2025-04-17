import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shafasrm_app/core/api/base_api_repo.dart';
import 'package:shafasrm_app/features/authentication/data/source/auth_source_remote.dart';
import 'package:shafasrm_app/features/authentication/models/login_req_model.dart';
import 'package:shafasrm_app/features/authentication/models/auth_res_model.dart';
import 'package:shafasrm_app/features/authentication/models/signup_req_model.dart';

class LoginRepo with BaseApiRepository {
  final LoginRemote loginClient;

  LoginRepo(this.loginClient);

  Future<Either<DioException, AuthResModel>> login(
    LoginReqModel loginReqModel,
  ) async {
    final response = getApiResponse<AuthResModel>(
      request: () => loginClient.login(loginReqModel),
    );
    print("Inside login repo");
    return response;
  }
}

class SignUpRepo with BaseApiRepository {
  final SignUpRemote signupClient;

  SignUpRepo(this.signupClient);

  Future<Either<DioException, AuthResModel>> signup(
    SignupReqModel loginReqModel,
  ) async {
    final response = getApiResponse<AuthResModel>(
      request: () => signupClient.signup(loginReqModel),
    );
    print("Inside login repo");
    return response;
  }
}
