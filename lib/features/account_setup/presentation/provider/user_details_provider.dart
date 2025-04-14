import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shafasrm_app/core/providers/dio_provider.dart';
import 'package:shafasrm_app/features/account_setup/data/repository/user_details_repo.dart';
import 'package:shafasrm_app/features/account_setup/data/source/remote/user_details_remote.dart';
import 'package:shafasrm_app/features/account_setup/models/user_details_model.dart';

part 'generated/user_details_provider.g.dart';

@riverpod
AddUserDetailsRemote addUserDetailsRemote(AddUserDetailsRemoteRef ref) {
  final dio = ref.read(baseDioServiceProvider);
  return AddUserDetailsRemote(dio);
}

@riverpod
UserDetailsRepo userDetailsRepo(UserDetailsRepoRef ref) {
  final loginRemoteClient = ref.read(addUserDetailsRemoteProvider);
  return UserDetailsRepo(loginRemoteClient);
}

@riverpod
class UserDetails extends _$UserDetails {
  @override
  UserDetailsModel build() {
    return UserDetailsModel(
      phone: null,
      gender: null,
      birthday: null,
      location: null,
      religion: null,
      department: null,
      stream: null,
      degree: null,
    );
  }

  Future<bool> addUserDetails(UserDetailsModel userDetails) async {
    final userDetailsRepo = ref.read(userDetailsRepoProvider);
    final res = await userDetailsRepo.addUserDetails(userDetails);

    return res.fold(
      (e) {
        print(e);
        return false;
      },
      (data) {
        return true;
      },
    );
  }
}
