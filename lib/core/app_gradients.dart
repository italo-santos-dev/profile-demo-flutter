import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppGradients {
  static final linear = LinearGradient(colors: [
    //Color(0xFFDF7494),
    //Color(0xFF963772),
    Color(0xFF592256),
    Color(0xFF2D0C40),
  ], stops: [
    0.0,
    0.695
  ], transform: GradientRotation(2.13959913 * pi));
}
