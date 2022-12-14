import 'package:flutter/material.dart';
import 'package:profile_demo/core/app_colors.dart';
import 'package:profile_demo/core/app_gradients.dart';
import 'package:profile_demo/core/app_images.dart';
import 'package:profile_demo/core/app_string.dart';
import 'package:profile_demo/core/app_text_style.dart';
import 'package:profile_demo/pages/home/home_page.dart';
import 'package:profile_demo/screens/home/home_screen.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then(
      (value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      ),
    );
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: AppGradients.linear,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage(AppImages.profilenewi),
                        radius: 50.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      Text(
                        Strings.portfolio,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      backgroundColor: AppColors.white,
                      color: AppColors.purple,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      Strings.rights_reserved,
                      style: TextStyles.body.copyWith(
                        color: AppColors.white,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
