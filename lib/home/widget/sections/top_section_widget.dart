import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:profile/components/widget/glass_content_compenents_widget.dart';
import 'package:profile/core/app_colors.dart';
import 'package:profile/core/app_default.dart';
import 'package:profile/core/app_images.dart';
import 'package:profile/core/core.dart';

class TopSectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxHeight: 900.0, minHeight: 700.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.lightcoral,
      ),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200.0,
        child: Column(
          children: [
            Spacer(),
            //Image.asset(AppImages.logo),
            GlassContentCompenentsWidget(size: size),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
