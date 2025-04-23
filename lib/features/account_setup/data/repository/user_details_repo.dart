import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shafasrm_app/core/api/base_api_repo.dart';
import 'package:shafasrm_app/features/account_setup/data/source/remote/user_details_remote.dart';
import 'package:shafasrm_app/features/account_setup/models/user_details_model.dart';

class UserDetailsRepo with BaseApiRepository {
  final AddUserDetailsRemote addUserDetailsRemote;

  UserDetailsRepo(this.addUserDetailsRemote);

  Future<Either<DioException, void>> addUserDetails(
    UserDetailsModel userDetails,
  ) async {
    final response = getApiResponse<void>(
      request: () => addUserDetailsRemote.addUserDetails(userDetails),
    );
    return response;
  }
}
