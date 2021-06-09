import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:profile_demo/core/app_colors.dart';
import 'package:profile_demo/core/app_images.dart';

class LargeComponentWidget extends StatelessWidget {
  const LargeComponentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700.0,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Image.asset(AppImages.meio),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Hey! 👋 Welcome to my profile!",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      color: AppColors.white,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Italo \nSantos",
                      style: TextStyle(
                        fontSize: 90.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 20.0),
                    child: Text(
                      "Let's explore the world",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                        height: 1.5,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
