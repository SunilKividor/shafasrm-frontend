import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shafasrm_app/features/authentication/models/login_req_model.dart';

part 'generated/login_req.g.dart';

@RestApi(baseUrl: "http://localhost:3000")
abstract class LoginRemote {
  factory LoginRemote(Dio dio) = _LoginRemote;

  @POST("/auth/login")
  Future<HttpResponse<Map<String, String>>> login(
    @Body() LoginReqModel loginReqModel,
    @Header('Content-Type') contentType,
  );
}