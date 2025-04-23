import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:shafasrm_app/core/extensions/context_extensions.dart';
import 'package:shafasrm_app/features/home/presentation/provider/swipe_feed_provider.dart';
import 'package:shafasrm_app/features/home/presentation/widgets/action_bar.dart';
import 'package:shafasrm_app/features/home/presentation/widgets/appbar.dart';
import 'package:shafasrm_app/features/home/presentation/widgets/bottom_nav_bar.dart';
import 'package:shafasrm_app/features/home/presentation/widgets/swipe_card.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(swipeFeedProvider.notifier).fetchFeed();
  }

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

              Consumer(
                builder: (ctx, ref, child) {
                  final feedAsync = ref.watch(swipeFeedProvider);

                  return feedAsync.when(
                    data:
                        (feed) => SwipeCard(
                          swipeCardController: swipeCardController,
                          feed: feed,
                        ),
                    loading: () => const CircularProgressIndicator(),
                    error: (err, stack) => Text('Error: $err'),
                  );
                },
              ),
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
