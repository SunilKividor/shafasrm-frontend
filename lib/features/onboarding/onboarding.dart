import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:shafasrm_app/core/providers/extensions/context_extensions.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    final width = context.screenWidth;
    final height = context.screenHeight;
    return Scaffold(
      backgroundColor: Color(0xffFDFCFC),
      body: Column(
        children: [
          SizedBox(
            height: height * .58,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .08),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff3B3B3D),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(180),
                        bottomRight: Radius.circular(180),
                      ),
                    ),
                    height: height * .5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff5C5C5C),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(180),
                        bottomRight: Radius.circular(180),
                      ),
                    ),
                    height: height * .2,
                  ),
                ),

                Positioned(
                  left: 1,
                  right: 1,
                  top: (height * .15) + ((height * .5) - (height * .2)) / 2,
                  child: Align(
                    child: Text(
                      "SHAFA",
                      style: GoogleFonts.gorditas(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Where\nthe Matches Are\nHotter\nThan SRM Summers!",
                      style: GoogleFonts.mansalva(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 28),
                  child: Divider(thickness: 3, color: Colors.black),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'GET YOUR SHAF',
                        style: GoogleFonts.autourOne(
                          color: Color(0xff3B3B3D),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: width * .15,
                        width: width * .15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff3B3B3D),
                        ),
                        child: Icon(PhosphorIconsBold.caretRight),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: height * .03),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class ZigZagPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final Paint paint = Paint()
//       ..color = Colors.blue
//       ..strokeWidth = 4
//       ..style = PaintingStyle.stroke;

//     final Path path = Path();

//     double waveWidth = size.width *.25;
//     double waveHeight = size.height *.1;

//     path.moveTo(size.width *.2, size.height);

//     for (double i = 0; i < size.width; i += waveWidth) {
//       // Smooth upward curve, with growing step size
//       path.relativeQuadraticBezierTo(
//         waveWidth / 6, -waveHeight * 1.2, // Control point slightly above midpoint
//         waveWidth, -waveHeight + 6, // End point of curve
//       );

//       // Horizontal blend - makes it less sharp
//       path.relativeQuadraticBezierTo(
//         waveWidth / 2, waveHeight * 0.2, // Tiny curve instead of a straight line
//         waveWidth / 1.8, 0, // Extends step horizontally
//       );

//       // Increase step size gradually
//       waveWidth *= 0.5;
//       waveHeight *= 0.5;
//     }

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }


    //         Transform.scale(
    //           scale: 1.3,
    //           child: Assets.picture1.image(
    //           ),
    //         ),
    //             Positioned.fill(
    //   child: BackdropFilter(
    //     filter: ImageFilter.blur(sigmaX: 26, sigmaY: 26), // Adjust blur intensity
    //     child: Container(
    //       color: Colors.transparent, // Important: must be transparent
    //     ),
    //   ),
    // ),
    //             Transform.scale(
    //           scale: 1.3,
    //           child: Assets.picture1.image(
    //           ),
    //         ),
    //           Positioned.fill(
    //   child: BackdropFilter(
    //     filter: ImageFilter.blur(sigmaX: 26, sigmaY: 26),
    //           child :  Transform.scale(
    //           scale: 1.3,
    //           child: Container(
    //       color: const Color.fromARGB(94, 0, 0, 0), // Important: must be transparent
    //     ),
    //         ), // Adjust blur intensity
    //   ),
    // ),

