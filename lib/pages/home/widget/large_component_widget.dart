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
                        "Ei </> Bem-vindo ao meu portfólio!",
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
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
                            height: 1.4,
                          ),
                        ),
                      ),
                      Text(
                        "Vamos explorar o mundo?",
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                          color: AppColors.white,
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
