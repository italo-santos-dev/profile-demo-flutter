import 'package:flutter/material.dart';
import 'package:profile_demo/constants.dart';
import 'package:profile_demo/core/app_colors.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: percentage),
                duration: defaultDuration,
                builder: (context, double value, child) => Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: value,
                      color: AppColors.crowned,
                    ),
                    Center(
                      child: Text(
                        (value * 100).toInt().toString() + "%",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    )
                  ],
                )
            ),
          ),
          SizedBox(height: defaultPadding / 2),
          Text(
            label,
            maxLines: 1,
            style: Theme.of(context).textTheme.subtitle2,
          )
        ],
      ),
    );
  }
}