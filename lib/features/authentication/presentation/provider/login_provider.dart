

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shafasrm_app/features/authentication/data/login_req.dart';
import 'package:shafasrm_app/features/authentication/data/repository/login_repo.dart';
import 'package:shafasrm_app/features/authentication/models/login_req_model.dart';

part 'generated/login_provider.g.dart';

@riverpod
LoginRemote loginRemote(LoginRemoteRef ref) {
  final dio = Dio();
  return LoginRemote(dio);
}

@riverpod
LoginRepo loginRepo(LoginRepoRef ref) {
  final loginRemoteClient = ref.read(loginRemoteProvider);
  return LoginRepo(loginRemoteClient);
}

@riverpod
class Login extends _$Login{
  @override
  void build() {}

  Future<void> login(LoginReqModel loginReqModel) async {
    final loginRemote = ref.read(loginRemoteProvider);
    final loginRepo = ref.read(loginRepoProvider);

    final response = await loginRepo.login(loginReqModel);

    response.fold((e) => print(e), (res) => print(res));
  }
}