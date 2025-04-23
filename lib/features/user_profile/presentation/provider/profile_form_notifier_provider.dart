import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shafasrm_app/core/providers/dio_provider.dart';
import 'package:shafasrm_app/features/user_profile/data/repository/profile_form_repository.dart';
import 'package:shafasrm_app/features/user_profile/data/source/remote/profile_form_remote.dart';
import 'package:shafasrm_app/features/user_profile/models/user_profile_form_model.dart';

part 'generated/profile_form_notifier_provider.g.dart';

@riverpod
ProfileFormRemote profileFormRemote(ProfileFormRemoteRef ref) {
  final dio = ref.read(baseDioServiceProvider);
  return ProfileFormRemote(dio);
}

@riverpod
ProfileFormRepository profileFormRepository(ProfileFormRepositoryRef ref) {
  final profileFormRemote = ref.read(profileFormRemoteProvider);
  return ProfileFormRepository(profileFormRemote);
}

@riverpod
class ProfileFormNotifer extends _$ProfileFormNotifer {
  @override
  void build() {}

  Future<bool> createUserProfileRemote(
    UserProfileFormModel userProfileFormModel,
  ) async {
    final profileFormRepo = ref.read(profileFormRepositoryProvider);
    final res = await profileFormRepo.createUserProfile(userProfileFormModel);
    return res.fold(
      (e) {
        print(e);
        return false;
      },
      (d) {
        return true;
      },
    );
  }
}
