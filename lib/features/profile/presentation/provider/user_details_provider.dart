import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shafasrm_app/core/providers/dio_provider.dart';
import 'package:shafasrm_app/features/profile/data/repository/user_details_repo.dart';
import 'package:shafasrm_app/features/profile/data/source/remote/user_details_remote.dart';
import 'package:shafasrm_app/features/profile/models/user_details_model.dart';

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
}
