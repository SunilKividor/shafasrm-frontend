import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:shafasrm_app/features/authentication/models/login_req_model.dart';
import 'package:shafasrm_app/features/authentication/presentation/provider/login_provider.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final loginReqModel = LoginReqModel(
      username: 'test',
      password: 'test'
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () async {
            await ref.read(loginProvider.notifier).login(loginReqModel);
          }, child: Text('SignUp'),),
          Gap(30),
          ElevatedButton(onPressed: (){}, child: Text('Login'),)
        ],
      ),
    );
  }
}