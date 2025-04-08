import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shafasrm_app/features/profile/models/user_details_model.dart';

part 'generated/user_details_remote.g.dart';

@RestApi(baseUrl: "http://13.60.194.172:3000")
abstract class AddUserDetailsRemote {
  factory AddUserDetailsRemote(Dio dio) = _AddUserDetailsRemote;

  @POST("/auth/login")
  Future<HttpResponse<void>> addUserDetails(
    @Body() UserDetailsModel loginReqModel,
    @Header('Content-Type') String contentType,
  );
}
