import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shafasrm_app/features/account_setup/models/user_details_model.dart';

part 'generated/user_details_remote.g.dart';

@RestApi(baseUrl: "http://13.60.194.172:3000")
abstract class AddUserDetailsRemote {
  factory AddUserDetailsRemote(Dio dio) = _AddUserDetailsRemote;

  @POST("/user/details")
  Future<HttpResponse<void>> addUserDetails(
    @Body() UserDetailsModel loginReqModel,
    @Header('Content-Type') String contentType,
  );
}
