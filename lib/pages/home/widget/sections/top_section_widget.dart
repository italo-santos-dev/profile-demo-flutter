import 'package:flutter/material.dart';
import 'package:profile_demo/core/app_colors.dart';
import 'package:profile_demo/core/app_default.dart';
import 'package:profile_demo/tabs/home_tab.dart';

class TopSectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900.0, minHeight: 700.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.purple,
      ),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200.0,
        child: Stack(
          children: [
            HomeTab(),
          ],
        ),
      ),
    );
  }
}
