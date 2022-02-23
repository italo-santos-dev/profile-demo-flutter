import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_demo/constants.dart';
import 'package:profile_demo/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: linda,
        canvasColor: linda,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
          bodyText1: TextStyle(color: bodyTextColor),
          bodyText2: TextStyle(color: bodyTextColor),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Portfólio Dev Italo Santos',
      home: SplashPage(),
    );
  }
}
