import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile_demo/core/app_images.dart';
import 'package:profile_demo/pages/about/widget/sections/content_about_widget.dart';

class LargeAboutComponentsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 48.0, right: 48.0),
      child: IntrinsicHeight(
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
                    child: ContentAboutWidget(),
                  ),
                  _buildIllustration(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildIllustration() {
  return SvgPicture.asset(
    AppImages.profileaboutquite,
    semanticsLabel: 'Middle about profile',
    width: 290.0,
    height: 290.0,
  );
}
