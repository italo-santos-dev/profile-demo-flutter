import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:profile_demo/core/app_colors.dart';
import 'package:profile_demo/core/app_text_style.dart';
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
        padding: EdgeInsets.all(48.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ei </> Bem-vindo ao meu portfólio!",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      color: AppColors.white,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Italo \nSantos",
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 20.0),
                    child: Text(
                      "Vamos explorar o mundo?",
                      style: TextStyle(
                        fontSize: 17,
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
