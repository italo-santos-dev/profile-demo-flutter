import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:profile/core/app_colors.dart';
import 'package:profile/core/app_default.dart';

class GlassContentCompenentsWidget extends StatelessWidget {
  const GlassContentCompenentsWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7),
          width: double.infinity,
          color: AppColors.purple.withOpacity(0.3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hellor teste",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: AppColors.white),
              ),
              Text(
                "Italo \nSantos",
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                  height: 1.5,
                ),
              ),
              Text(
                "teste teste teste teste test",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: AppColors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
