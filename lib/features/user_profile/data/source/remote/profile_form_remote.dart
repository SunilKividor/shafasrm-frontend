import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shafasrm_app/features/user_profile/models/user_profile_form_model.dart';

part 'generated/profile_form_remote.g.dart';

@RestApi()
abstract class ProfileFormRemote {
  factory ProfileFormRemote(Dio dio) = _ProfileFormRemote;

  @POST("/v1/users/profile")
  Future<HttpResponse<void>> createUserProfile(
    @Body() UserProfileFormModel loginReqModel,
  );
}
