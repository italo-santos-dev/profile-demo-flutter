import 'dart:math';

import 'package:flutter/material.dart';

class AppGradients {
  static final linear = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFD291BC),
        Color(0xFF2f2e41),
  ], stops: [
    0.3,
    1
  ], transform: GradientRotation(2.13959913 * pi));
}
