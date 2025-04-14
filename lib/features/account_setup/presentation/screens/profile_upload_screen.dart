import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shafasrm_app/config/theme/colors.dart';
import 'package:shafasrm_app/core/extensions/context_extensions.dart';
import 'package:shafasrm_app/features/account_setup/presentation/provider/profile_provider.dart';
import 'package:shafasrm_app/features/account_setup/presentation/provider/user_details_page_state.dart';
import 'package:shafasrm_app/features/account_setup/presentation/widgets/animated_profile_overlay.dart';

class ProfilePhotoUpload extends ConsumerStatefulWidget {
  ProfilePhotoUpload({super.key});

  @override
  ConsumerState<ProfilePhotoUpload> createState() => _ProfilePhotoUploadState();
}

class _ProfilePhotoUploadState extends ConsumerState<ProfilePhotoUpload> {
  XFile? pickedImage;

  final ImagePicker picker = ImagePicker();

  void pickImage() async {
    ref
        .read(profileUploadStatusProvider.notifier)
        .setUploadStatus(UploadStatus.uploading);
    try {
      final image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        ref.read(profileUploadProvider.notifier).setUploadProfile(image);
      }
      ref
          .read(profileUploadStatusProvider.notifier)
          .setUploadStatus(UploadStatus.uploaded);
    } catch (e) {
      print(e);
      ref
          .read(profileUploadStatusProvider.notifier)
          .setUploadStatus(UploadStatus.failed);
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  _buildHeading(),
                  Gap(height * .005),
                  _buildSubHeadind(),
                ],
              ),
              _buildPhotoBackground(context),
              _buildUploadButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeading() {
    return Text(
      'Drop Your Rizz Pic!',
      style: GoogleFonts.inter(color: Colors.black, fontSize: 34),
    );
  }

  Widget _buildSubHeadind() {
    return Text(
      'Start Here, Stack More Pics Later!',
      style: GoogleFonts.inter(color: Colors.black, fontSize: 16),
    );
  }

  Widget _buildPhotoBackground(BuildContext context) {
    final height = context.screenHeight;
    final width = context.screenWidth;
    return Consumer(
      builder: (ctx, ref, child) {
        final image = ref.watch(profileUploadProvider);
        return Container(
          margin: EdgeInsets.all(16),
          height: height * .58,
          width: width * .79,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.warmWhite,
          ),
          clipBehavior: Clip.hardEdge,
          child: Stack(
            fit: StackFit.expand,
            children: [
              // user.image(fit: BoxFit.cover),
              image?.path != null
                  ? Image.file(File(image!.path), fit: BoxFit.cover)
                  : SizedBox(),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.3),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              image?.path != null
                  ? AnimatedProfileOverlay(width: width)
                  : SizedBox(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildUploadButton() {
    return Consumer(
      builder: (ctx, ref, child) {
        final uploadStatus = ref.watch(profileUploadStatusProvider);
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed:
                    uploadStatus != UploadStatus.uploading &&
                            uploadStatus != UploadStatus.uploaded
                        ? pickImage
                        : () {},
                child: _getStatusWidgets(uploadStatus),
              ),
            ),
            uploadStatus == UploadStatus.uploaded
                ? _buildRetryButton()
                : SizedBox(),
          ],
        );
      },
    );
  }

  Widget _buildRetryButton() {
    return TextButton(
      onPressed: pickImage,
      child: Text('retry', style: GoogleFonts.poppins(color: Colors.blue)),
    );
  }

  Widget _getStatusWidgets(UploadStatus status) {
    return switch (status) {
      UploadStatus.idle => Text(
        'upload',
        style: GoogleFonts.poppins(color: Colors.black),
      ),
      UploadStatus.uploaded => Text(
        'Cool ? Confirm',
        style: GoogleFonts.poppins(color: Colors.black),
      ),
      UploadStatus.uploading => CircularProgressIndicator(),
      UploadStatus.failed => Text(
        'retry',
        style: GoogleFonts.poppins(color: Colors.black),
      ),
    };
  }
}
