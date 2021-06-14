import 'package:flutter/material.dart';
import 'package:profile_demo/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfólio Dev Italo Santos',
      // theme: ThemeData(
      //   brightness: Brightness.light,
      // ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      home: SplashPage(),
    );
  }
}
