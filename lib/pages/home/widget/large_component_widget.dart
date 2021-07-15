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
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Hey </> Welcome to my profile!",
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
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                _buildIllustration(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildIllustration() {
  return Image.asset(
    AppImages.meio,
    width: 500.0,
    height: 500.0,
  );
}
