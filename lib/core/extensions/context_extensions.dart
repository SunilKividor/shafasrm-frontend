import 'package:flutter/material.dart';

extension MediaQueryExtensions on BuildContext {
  // Access to MediaQueryData
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  // Screen dimensions
  double get screenHeight => mediaQuery.size.height;
  double get screenWidth => mediaQuery.size.width;

  // Device padding
  EdgeInsets get padding => mediaQuery.padding;
  EdgeInsets get viewInsets => mediaQuery.viewInsets;
}
