import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shafasrm_app/core/api/base_api_repo.dart';
import 'package:shafasrm_app/features/common/data/sources/remote/photos_remote.dart';
import 'package:shafasrm_app/features/common/models/photos_req_model.dart';

class PhotosRepo with BaseApiRepository {
  final PhotosRemote remoteClient;

  PhotosRepo(this.remoteClient);

  Future<Either<DioException, PhotosPresignedUrlResModel>> getPreSignedUrl(
    PhotosQueryParam queryParam,
  ) async {
    final response = getApiResponse<PhotosPresignedUrlResModel>(
      request: () => remoteClient.getPreSignedUrl(queryParam),
    );
    return response;
  }

  Future<Either<DioException, void>> storePhotoKeyRemote(
    PhotoKeyStoreReqModel photoKeyStoreReq,
  ) async {
    final response = getApiResponse<void>(
      request: () => remoteClient.storePhotoKeyRemote(photoKeyStoreReq),
    );
    return response;
  }
}
