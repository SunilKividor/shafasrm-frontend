import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:shafasrm_app/config/assets.gen.dart';
import 'package:shafasrm_app/core/extensions/context_extensions.dart';
import 'package:shafasrm_app/features/home/presentation/widgets/action_bar.dart';
import 'package:shafasrm_app/features/home/presentation/widgets/appbar.dart';
import 'package:shafasrm_app/features/home/presentation/widgets/bottom_nav_bar.dart';
import 'package:shafasrm_app/features/home/presentation/widgets/swipe_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AppinioSwiperController swipeCardController = AppinioSwiperController();
  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight;
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: SizedBox(
          height: height * .85,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Gap(height * .02),

              HomeAppBar(),

              ActionBar(),

              SwipeCard(swipeCardController: swipeCardController),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavBar(
        swipeCardController: swipeCardController,
      ),
    );
  }
}
