import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shafasrm_app/features/authentication/models/login_req_model.dart';
import 'package:shafasrm_app/features/authentication/models/auth_res_model.dart';
import 'package:shafasrm_app/features/authentication/models/signup_req_model.dart';

part 'generated/auth_source_remote.g.dart';

@RestApi()
abstract class LoginRemote {
  factory LoginRemote(Dio dio) = _LoginRemote;

  @POST("/v1/auth/login")
  Future<HttpResponse<AuthResModel>> login(@Body() LoginReqModel loginReqModel);
}

@RestApi()
abstract class SignUpRemote {
  factory SignUpRemote(Dio dio) = _SignUpRemote;

  @POST("/v1/auth/register")
  Future<HttpResponse<AuthResModel>> signup(
    @Body() SignupReqModel loginReqModel,
  );
}
