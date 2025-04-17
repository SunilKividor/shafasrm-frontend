import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mime/mime.dart';
import 'package:shafasrm_app/core/providers/dio_provider.dart';
import 'package:shafasrm_app/core/routes/router.dart';
import 'package:shafasrm_app/features/common/models/photos_req_model.dart';
import 'package:shafasrm_app/features/common/presentation/provider/photos_provider.dart';
part 'generated/profile_provider.g.dart';

@riverpod
class ProfileUpload extends _$ProfileUpload {
  XFile? build() {}

  void setProfile(XFile profile) {
    state = profile;
  }

  Future<bool> uploadPhoto() async {
    if (state?.path == null) return false;
    final mimeType = lookupMimeType(state!.path);
    if (mimeType == null || !mimeType.startsWith("image/")) {
      print("Invalid MIME type");
      return false;
    }
    final typeSuffix = mimeType.split("/").last;
    print("typeSuffix: $typeSuffix");

    //getting presigned url
    final preSignedUrlRes = await ref
        .read(photosProvider.notifier)
        .getPreSignedUrl(typeSuffix);

    final uploadUrl = preSignedUrlRes?.url;
    final key = preSignedUrlRes?.key;

    print("uploadUrl: $uploadUrl");
    print("key: $key");

    if (uploadUrl == null || key == null) {
      print("Failed to get pre-signed URL");
      return false;
    }

    // uplaod using the url
    try {
      final dio = ref.read(defaultDioServiceProvider);
      final isUploadSuccess = await uploadToPresignedUrl(
        dio: dio,
        presignedUrl: uploadUrl,
        imageFile: state!,
        mimeType: mimeType,
      );

      if (isUploadSuccess) {
        final photoKeyStoreReq = PhotoKeyStoreReqModel(
          photoKey: key,
          isPrimary: true,
        );
        final isSuccess = await ref
            .read(photosProvider.notifier)
            .storePhotoKeyRemote(photoKeyStoreReq);

        return isSuccess;
      }
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> uploadToPresignedUrl({
    required Dio dio,
    required String presignedUrl,
    required XFile imageFile,
    required String mimeType,
  }) async {
    final imageBytes = await imageFile.readAsBytes();

    final response = await dio.put(
      presignedUrl,
      data: imageBytes,
      options: Options(headers: {'Content-Type': mimeType}),
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Upload failed with status: ${response.statusCode}');
    }
  }
}

enum UploadStatus { idle, uploaded, uploading, failed }

@riverpod
class ProfileUploadStatus extends _$ProfileUploadStatus {
  UploadStatus build() {
    return UploadStatus.idle;
  }

  void setUploadStatus(UploadStatus status) {
    state = status;
  }
}
