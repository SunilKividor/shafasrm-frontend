import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shafasrm_app/core/providers/dio_provider.dart';
import 'package:shafasrm_app/features/authentication/presentation/provider/auth_provider.dart';
import 'package:shafasrm_app/features/common/data/repository/photos_repository.dart';
import 'package:shafasrm_app/features/common/data/sources/remote/photos_remote.dart';
import 'package:shafasrm_app/features/common/models/photos_req_model.dart';

part 'generated/photos_provider.g.dart';

@riverpod
PhotosRemote photosRemote(PhotosRemoteRef ref) {
  final dio = ref.read(baseDioServiceProvider);
  return PhotosRemote(dio);
}

@riverpod
PhotosRepo photosRepo(PhotosRepoRef ref) {
  final phtotosRemoteClient = ref.read(photosRemoteProvider);
  return PhotosRepo(phtotosRemoteClient);
}

@riverpod
class Photos extends _$Photos {
  void build() {}

  Future<PhotosPresignedUrlResModel?> getPreSignedUrl(String mime) async {
    final photosRepo = ref.read(photosRepoProvider);

    final queryParam = PhotosQueryParam(contentType: mime);

    final res = await photosRepo.getPreSignedUrl(queryParam);
    return res.fold(
      (e) {
        print(e);
        return null;
      },
      (data) {
        return data;
      },
    );
  }

  Future<bool> storePhotoKeyRemote(
    PhotoKeyStoreReqModel photoKeyStoreReq,
  ) async {
    final photosRepo = ref.read(photosRepoProvider);

    final res = await photosRepo.storePhotoKeyRemote(photoKeyStoreReq);
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
