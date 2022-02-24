import 'package:flutter/material.dart';
import 'package:profile_demo/components/animated_counter.dart';
import 'package:profile_demo/constants.dart';
import 'package:profile_demo/screens/home/components/heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
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