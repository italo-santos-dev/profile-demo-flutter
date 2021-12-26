import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_demo/constants.dart';
import 'package:profile_demo/core/app_colors.dart';
import 'package:profile_demo/core/app_images.dart';
import 'package:profile_demo/screens/main/main_screen.dart';

import 'components/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
      ],
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          Text.rich(
            TextSpan(text: "<", children: [
              TextSpan(
                text: "/",
                style: TextStyle(color: AppColors.stefany),
              ),
              TextSpan(text: "> ")
            ]),
          ),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                "Atualmente estou aprendendo Java e Flutter",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "Continue aprendendo de forma contínua e prática",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "Mas estou sempre aberto para descobrir coisas novas",
                speed: Duration(milliseconds: 60),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


