import 'package:flutter/cupertino.dart';

class AppGradients {
  static final linear = LinearGradient(
    colors: [
      Color(0xFFDF7494),
      Color(0xFF963772),
      Color(0xFF592256),
      Color(0xFF2D0C40),
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [0.2, 0.5, 0.8, 0.7],
  );
}
