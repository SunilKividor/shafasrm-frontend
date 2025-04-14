import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shafasrm_app/config/assets.gen.dart';
import 'package:shafasrm_app/core/extensions/context_extensions.dart';

class SwipeCard extends StatelessWidget {
  SwipeCard({super.key, required this.swipeCardController});

  final AppinioSwiperController swipeCardController;

  final users = [
    // Assets.picture1,
    Assets.girl1,
    Assets.girl2,
    Assets.girl3,
    Assets.boy1,
    Assets.boy2,
    Assets.boy3,
    Assets.girl1,
    Assets.girl2,
    Assets.girl3,
    Assets.boy1,
    Assets.boy2,
    Assets.boy3,
    Assets.girl1,
    Assets.girl2,
    Assets.girl3,
    Assets.boy1,
    Assets.boy2,
    Assets.boy3,
  ];

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight;
    final width = context.screenWidth;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      alignment: Alignment.center,
      height: height * .58,
      width: width * .79,
      child: AppinioSwiper(
        controller: swipeCardController,
        duration: Duration(milliseconds: 450),
        swipeOptions: SwipeOptions.only(left: true, right: true),
        maxAngle: 18,
        backgroundCardScale: 0,
        cardCount: 20,
        cardBuilder: (BuildContext context, int index) {
          final user = users[index];

          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            clipBehavior: Clip.hardEdge,
            child: Stack(
              fit: StackFit.expand,
              children: [
                user.image(fit: BoxFit.cover),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.6),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 20,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: (width * .78) / 1.6,
                            child: Text(
                              "Sunil Kumar",
                              style: GoogleFonts.alike(
                                color: Color(0xffDBFF00),
                                fontWeight: FontWeight.bold,
                                fontSize: 36,
                                height: 1.1,
                                letterSpacing: 1.7,
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withOpacity(0.6),
                                    offset: Offset(1, 1),
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "21",
                            maxLines: 2,
                            style: GoogleFonts.trainOne(
                              color: Color(0xffDBFE01),
                              fontWeight: FontWeight.bold,
                              fontSize: 42,
                              letterSpacing: 1.5,
                              height: 1.1,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.6),
                                  offset: Offset(1, 1),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Gap(4),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          "DSBS,Hyderabad",
                          style: GoogleFonts.alike(
                            color: Color(0xffDBFF00),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            letterSpacing: 1.5,
                            shadows: [
                              Shadow(
                                color: Colors.black.withOpacity(0.6),
                                offset: Offset(1, 1),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
