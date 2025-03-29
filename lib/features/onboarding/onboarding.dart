import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Scaffold(
      body: Stack(
        children: [
          Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 32,horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 0,),
              Text('SHAFA', style: GoogleFonts.caveatBrush(fontSize: width *.22)),
              Text(
                  'Where the Matches Are Hotter Than SRM Summers!',
                  style: GoogleFonts.zenAntique(fontSize: 10),
                  textAlign: TextAlign.center,
                ),
            ],
          ),
        ),
        ]
      ),
    );
  }
}

class ZigZagPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Color(0xff2C292E)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 28;

    Path path = Path();
    double waveWidth = size.width / 5;
    double waveHeight = size.height / 0.8;

    path.moveTo(0, size.height / 2);

    for (double i = 0; i < size.width; i += waveWidth) {
      path.relativeQuadraticBezierTo(
        waveWidth / 2, -waveHeight, // Control point (above)
        waveWidth, 0, // End point
      );
      path.relativeQuadraticBezierTo(
        waveWidth / 2, waveHeight, // Control point (below)
        waveWidth, 0, // End point
      );
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
