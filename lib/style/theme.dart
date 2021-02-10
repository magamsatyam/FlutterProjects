import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Colors {

  const Colors();

  static const Color mainColor = const Color(0xFF40C4FF);
  static const Color secondColor = const Color(0xFF00B0FF);
  static const Color grey = const Color(0xFFE5E5E5);
  static const Color black = const Color(0xFF090808);
  static const Color background = const Color(0xFFf0f1f6);
  static const Color titleColor = const Color(0xFF061857);
  static const primaryGradient = const LinearGradient(
    colors: const [ Color(0xFF01579B), Color(0xFF0091EA)],
    stops: const [0.0, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}