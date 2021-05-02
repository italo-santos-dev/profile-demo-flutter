import 'package:flutter/material.dart';
import 'package:profile/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Italo Santos',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
