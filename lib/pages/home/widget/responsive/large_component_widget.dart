import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_demo/core/app_colors.dart';
import 'package:profile_demo/core/app_images.dart';
import 'package:profile_demo/core/app_string.dart';

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
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Strings.bem_vindo,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                          color: AppColors.white,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: Strings.home_i,
                          style: TextStyle(
                            fontSize: 90.0,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                            height: 1.3,
                          ),
                        ),
                      ),
                      Text(
                        Strings.home_explore,
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
  return SvgPicture.asset(
    AppImages.profilehomequite,
    semanticsLabel: 'Middle home profile ',
    width: 290.0,
    height: 290.0,
  );
}
