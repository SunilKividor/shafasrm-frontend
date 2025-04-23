import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shafasrm_app/core/api/base_api_repo.dart';
import 'package:shafasrm_app/features/user_profile/data/source/remote/profile_form_remote.dart';
import 'package:shafasrm_app/features/user_profile/models/user_profile_form_model.dart';

class ProfileFormRepository with BaseApiRepository {
  final ProfileFormRemote _remote;

  ProfileFormRepository(this._remote);

  Future<Either<DioException, void>> createUserProfile(
    UserProfileFormModel userProfileFormModel,
  ) async {
    final response = getApiResponse<void>(
      request: () => _remote.createUserProfile(userProfileFormModel),
    );
    return response;
  }
}
