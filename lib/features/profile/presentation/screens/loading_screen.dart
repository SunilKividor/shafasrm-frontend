import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shafasrm_app/features/profile/presentation/provider/user_details_page_provider.dart';
import 'package:shafasrm_app/features/profile/presentation/provider/user_details_provider.dart';

class ProfileCreationLoadingScreen extends ConsumerStatefulWidget {
  const ProfileCreationLoadingScreen({super.key});

  @override
  ConsumerState<ProfileCreationLoadingScreen> createState() =>
      _ProfileCreationLoadingScreenState();
}

class _ProfileCreationLoadingScreenState
    extends ConsumerState<ProfileCreationLoadingScreen> {
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
    isSuccess ? print("added") : print("failed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Loading')));
  }
}
