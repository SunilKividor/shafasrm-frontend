import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedProfileOverlay extends StatefulWidget {
  final double width;
  const AnimatedProfileOverlay({super.key, required this.width});

  @override
  State<AnimatedProfileOverlay> createState() => _AnimatedProfileOverlayState();
}

class _AnimatedProfileOverlayState extends State<AnimatedProfileOverlay>
    with TickerProviderStateMixin {
  late final AnimationController _nameController;
  late final AnimationController _ageController;
  late final AnimationController _locationController;

  late final Animation<Offset> _nameOffset;
  late final Animation<Offset> _ageOffset;
  late final Animation<Offset> _locationOffset;

  @override
  void initState() {
    super.initState();
    _nameController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _ageController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _locationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _nameOffset = Tween<Offset>(
      begin: Offset(-1.2, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _nameController, curve: Curves.easeOut));

    _ageOffset = Tween<Offset>(
      begin: Offset(1.2, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _ageController, curve: Curves.easeOut));

    _locationOffset = Tween<Offset>(
      begin: Offset(0, 1.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _locationController, curve: Curves.easeOut),
    );

    _nameController.forward();
    Future.delayed(Duration(milliseconds: 100), () => _ageController.forward());
    Future.delayed(
      Duration(milliseconds: 200),
      () => _locationController.forward(),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
              SlideTransition(
                position: _nameOffset,
                child: SizedBox(
                  width: (widget.width * .78) / 1.6,
                  child: Text(
                    "Sunil Kumar",
                    style: GoogleFonts.alike(
                      color: const Color(0xffDBFF00),
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
              ),
              SlideTransition(
                position: _ageOffset,
                child: Text(
                  "21",
                  maxLines: 2,
                  style: GoogleFonts.trainOne(
                    color: const Color(0xffDBFE01),
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
              ),
            ],
          ),
          const SizedBox(height: 4),
          SlideTransition(
            position: _locationOffset,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                "DSBS,Hyderabad",
                style: GoogleFonts.alike(
                  color: const Color(0xffDBFF00),
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
          ),
        ],
      ),
    );
  }
}
