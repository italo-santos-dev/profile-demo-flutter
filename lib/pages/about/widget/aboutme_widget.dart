import 'package:flutter/material.dart';
import 'package:profile_demo/core/app_colors.dart';
import 'package:profile_demo/core/app_fonts.dart';
import 'package:profile_demo/core/app_string.dart';
import 'package:profile_demo/core/app_text_style.dart';
import 'package:profile_demo/utils/responsive_layout_ultis.dart';

class AboutmeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 14.0,
          color: AppColors.white,
        ),
        children: <TextSpan>[
          TextSpan(
            text: Strings.about,
            style: TextStyles.heading.copyWith(
              fontFamily: Fonts.nexa_light,
              fontSize:
                  ResponsiveLayoutUltis.isSmallScreen(context) ? 36 : 45.0,
            ),
          ),
          TextSpan(
            text: Strings.me,
            style: TextStyles.heading.copyWith(
              color: AppColors.lightcoral,
              fontSize:
                  ResponsiveLayoutUltis.isSmallScreen(context) ? 36 : 45.0,
            ),
          ),
        ],
      ),
    );
  }
}
