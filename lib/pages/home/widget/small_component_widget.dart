import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:profile_demo/core/app_colors.dart';
import 'package:profile_demo/core/app_string.dart';

import 'package:profile_demo/core/core.dart';

import 'package:profile_demo/utils/responsive_layout_ultis.dart';

class SmallComponentWidget extends StatelessWidget {
  const SmallComponentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        fontSize: 100,
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
            Divider(),
            SizedBox(
              height: ResponsiveLayoutUltis.isSmallScreen(context) ? 12.0 : 0.0,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildIllustration() {
  return Image.asset(
    AppImages.meio,
    width: 400.0,
    height: 400.0,
  );
}
