import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_demo/constants.dart';
import 'package:profile_demo/core/app_colors.dart';
import 'package:profile_demo/screens/main/main_screen.dart';

import 'components/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
      ],
    );
  }
}

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLight(
            counter: AnimatedCounter(
              value: 21,
              text: "+",
            ),
            label: "Followers",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 30,
              text: "+",
            ),
            label: "Repositories",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 50,
              text: "+",
            ),
            label: "Stars",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 21,
              text: "+",
            ),
            label: "Following",
          ),
        ],
      ),
    );
  }
}

class HeighLight extends StatelessWidget {
  const HeighLight({Key? key, required this.counter, this.label})
      : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(width: defaultPadding / 2),
        Text(
          label!,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({Key? key, required this.value, this.text})
      : super(key: key);

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) => Text(
        "$value$text",
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: AppColors.stefany),
      ),
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
            TextSpan(
              text: "<",
              children: [
                TextSpan(
                  text: "/",
                  style: TextStyle(color: AppColors.stefany),
                ),
                TextSpan(text: "> ")
              ],
            ),
          ),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                "Atualmente estou esmiuçando Java e Flutter",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "Alcançando de forma contínua e prática",
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
