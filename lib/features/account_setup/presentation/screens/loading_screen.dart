import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shafasrm_app/core/routes/router.dart';
import 'package:shafasrm_app/features/account_setup/presentation/provider/user_details_page_state.dart';
import 'package:shafasrm_app/features/account_setup/presentation/provider/user_details_provider.dart';

class UserDetailsLoadingScreen extends ConsumerStatefulWidget {
  const UserDetailsLoadingScreen({super.key});

  @override
  ConsumerState<UserDetailsLoadingScreen> createState() =>
      _UserDetailsLoadingScreenState();
}

class _UserDetailsLoadingScreenState
    extends ConsumerState<UserDetailsLoadingScreen> {
  @override
  void initState() {
    super.initState();

    addUserDetailsRemote();
  }

  void addUserDetailsRemote() async {
    final userDetails = ref.read(userDetailsStateProvider);
    final isSuccess = await ref
        .read(userDetailsProvider.notifier)
        .addUserDetails(userDetails);
    if (isSuccess) {
      print("user details added");
      ProfilePhotoUploadScreenRoute().pushReplacement(context);
    } else {
      print("failed user details");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Loading')));
  }
}
