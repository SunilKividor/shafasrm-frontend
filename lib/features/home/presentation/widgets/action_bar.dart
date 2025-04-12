import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:shafasrm_app/core/extensions/context_extensions.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      height: height * .06,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildActionButton(
            'All',
            FaIcon(FontAwesomeIcons.newspaper, color: Colors.white),
          ),
          _buildActionButton(
            'All',
            Icon(PhosphorIconsBold.user, color: Colors.white),
          ),
          _buildActionButton(
            'All',
            Icon(PhosphorIconsBold.microphoneStage, color: Colors.white),
          ),
          _buildActionButton(
            'All',
            Icon(
              PhosphorIconsDuotone.chatsCircle,
              size: 28,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(String label, Widget child) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        color: Color(0xff3E4246),
      ),
      child: child,
    );
  }
}
