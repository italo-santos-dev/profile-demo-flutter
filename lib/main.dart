import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:profile_demo/core/app_colors.dart';

import 'core/app_widget.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: AppColors.lightcoral,
    ),
  );
  runApp(AppWidget());
}
