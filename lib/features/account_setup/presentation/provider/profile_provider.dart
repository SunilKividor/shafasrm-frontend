import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/profile_provider.g.dart';

@riverpod
class ProfileUpload extends _$ProfileUpload {
  XFile? build() {}

  void setUploadProfile(XFile profile) {
    state = profile;
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
