import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shafasrm_app/features/common/models/photos_req_model.dart';

part 'generated/photos_remote.g.dart';

@RestApi()
abstract class PhotosRemote {
  factory PhotosRemote(Dio dio) = _PhotosRemote;

  @GET("/v1/users/photos/pre-signed-url")
  Future<HttpResponse<PhotosPresignedUrlResModel>> getPreSignedUrl(
    @Queries() PhotosQueryParam queryParam,
  );

  @POST("/v1/users/photos")
  Future<HttpResponse<void>> storePhotoKeyRemote(
    @Body() PhotoKeyStoreReqModel photoKeyStoreReq,
  );
}
