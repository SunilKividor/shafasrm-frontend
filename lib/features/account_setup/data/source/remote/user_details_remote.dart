import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shafasrm_app/features/account_setup/models/user_details_model.dart';

part 'generated/user_details_remote.g.dart';

@RestApi()
abstract class AddUserDetailsRemote {
  factory AddUserDetailsRemote(Dio dio) = _AddUserDetailsRemote;

  @POST("/v1/users/details")
  Future<HttpResponse<void>> addUserDetails(
    @Body() UserDetailsModel loginReqModel,
  );
}
