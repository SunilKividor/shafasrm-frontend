import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:shafasrm_app/core/extensions/context_extensions.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.swipeCardController});

  final AppinioSwiperController swipeCardController;

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight;
    return Container(
      margin: EdgeInsets.symmetric(vertical: height * .04),
      height: height * .1,
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              swipeCardController.swipeLeft();
            },
            child: Container(
              margin: EdgeInsets.all(6),
              height: height * .06,
              width: height * .06,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff3E4246),
              ),
              child: Text(
                "P",
                style: GoogleFonts.rampartOne(
                  fontSize: height * .06 / 1.8,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(8),
              height: height * .1,
              width: height * .1,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffDBFF00),
              ),
              child: Icon(
                PhosphorIconsFill.paperPlaneTilt,
                size: height * .045,
                color: const Color.fromARGB(255, 28, 59, 36),
              ),
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              swipeCardController.swipeRight();
            },
            child: Container(
              margin: EdgeInsets.all(6),
              height: height * .06,
              width: height * .06,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff3E4246),
              ),
              child: Text(
                "S",
                style: GoogleFonts.bungeeShade(
                  fontSize: height * .06 / 1.8,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
