import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:shafasrm_app/core/extensions/context_extensions.dart';
import 'package:shafasrm_app/core/routes/router.dart';
import 'package:shafasrm_app/features/user_profile/presentation/provider/profile_form_notifier_provider.dart';
import 'package:shafasrm_app/features/user_profile/presentation/provider/profile_form_provider.dart';
import 'package:shafasrm_app/features/user_profile/presentation/utils/profile_form_data.dart';
import 'package:shafasrm_app/features/user_profile/presentation/widgets/profile_question.dart';

class ProfileFormScreen extends ConsumerStatefulWidget {
  const ProfileFormScreen({super.key});

  @override
  ConsumerState<ProfileFormScreen> createState() => _ProfileFormScreenState();
}

class _ProfileFormScreenState extends ConsumerState<ProfileFormScreen> {
  PageController pageController = PageController();
  void nextPage(bool isLastIndex) async {
    if (isLastIndex) {
      final userProfile = ref.read(profileFormProvider);
      final isSuccess = await ref
          .read(profileFormNotiferProvider.notifier)
          .createUserProfileRemote(userProfile);
      if (isSuccess) {
        HomeScreenRoute().pushReplacement(context);
      } else {
        print("error creating profile");
      }
    }
    pageController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final data = profileFormData;
    final height = context.screenHeight;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Consumer(
              builder: (ctx, ref, child) {
                return SizedBox(
                  height: height * .7,
                  child: PageView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    onPageChanged: (index) {
                      ref
                          .read(profileFormPageCurrentIndexProvider.notifier)
                          .setCurrentIndex(index);
                    },
                    controller: pageController,
                    itemCount: data.length,
                    itemBuilder: (ctx, index) {
                      return ProfileQuestion(data: data[index]);
                    },
                  ),
                );
              },
            ),
            Gap(16),
            Consumer(
              builder: (ctx, ref, child) {
                final currentIndex = ref.watch(
                  profileFormPageCurrentIndexProvider,
                );
                final isLastIndex = (currentIndex + 1) == data.length;
                return ElevatedButton(
                  onPressed: () {
                    nextPage(isLastIndex);
                  },
                  child: Text(isLastIndex ? 'Confirm' : 'Next'),
                );
              },
            ),
            Gap(height * .03),
          ],
        ),
      ),
    );
  }
}
