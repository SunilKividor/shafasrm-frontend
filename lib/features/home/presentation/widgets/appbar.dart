import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:shafasrm_app/core/extensions/context_extensions.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Matches',
            style: GoogleFonts.roboto(
              fontSize: 46,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(8),
              height: height * .06,
              width: height * .06,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff3E4246),
              ),

              child: Icon(PhosphorIconsFill.bellSimple),
            ),
          ),
        ],
      ),
    );
  }
}
