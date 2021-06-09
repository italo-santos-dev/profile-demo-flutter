import 'dart:math';

import 'package:flutter/material.dart';

class AppGradients {
  static final linear = LinearGradient(colors: [
    Color(0xFFDF7494),
    Color(0xFF2D0C40),
  ], stops: [
    0.0,
    0.695
  ], transform: GradientRotation(2.13959913 * pi));
}
