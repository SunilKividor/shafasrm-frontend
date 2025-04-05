import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shafasrm_app/core/providers/dio_provider.dart';
import 'package:shafasrm_app/core/providers/secure_storage_provider.dart';
import 'package:shafasrm_app/features/authentication/data/source/auth_source_remote.dart';
import 'package:shafasrm_app/features/authentication/data/repository/auth_repo.dart';
import 'package:shafasrm_app/features/authentication/models/login_req_model.dart';
import 'package:shafasrm_app/features/authentication/models/signup_req_model.dart';

part 'generated/auth_provider.g.dart';

@riverpod
LoginRemote loginRemote(LoginRemoteRef ref) {
  final dio = ref.read(baseDioServiceProvider);
  return LoginRemote(dio);
}

@riverpod
SignUpRemote signUpRemote(SignUpRemoteRef ref) {
  final dio = ref.read(baseDioServiceProvider);
  return SignUpRemote(dio);
}

@riverpod
LoginRepo loginRepo(LoginRepoRef ref) {
  final loginRemoteClient = ref.read(loginRemoteProvider);
  return LoginRepo(loginRemoteClient);
}

@riverpod
SignUpRepo signUpRepo(SignUpRepoRef ref) {
  final signupRemoteClient = ref.read(signUpRemoteProvider);
  return SignUpRepo(signupRemoteClient);
}

@riverpod
class Auth extends _$Auth{
  @override
  void build() {}

  Future<void> login(LoginReqModel loginReqModel) async {
    final loginRepo = ref.read(loginRepoProvider);
    print("Inside login provider");
    final response = await loginRepo.login(loginReqModel);

    response.fold(
      (e) => print(e), 
      (res) async {
        final secureStorage = ref.read(secureStorageServiceProvider);
        await secureStorage.write("access_token", res.accessToken);
        await secureStorage.write("refresh_token", res.refreshToken);
    },);
  }

  Future<void> signup(SignupReqModel signupReqModel) async {
    final signupRepo = ref.read(signUpRepoProvider);
    print("Inside signup provider");
    final response = await signupRepo.signup(signupReqModel);

    response.fold(
      (e) => print(e), 
      (res) async {
        final secureStorage = ref.read(secureStorageServiceProvider);
        await secureStorage.write("access_token", res.accessToken);
        await secureStorage.write("refresh_token", res.refreshToken);
    },);
  }
}