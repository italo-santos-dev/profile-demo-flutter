import 'package:flutter/material.dart';
import 'package:profile/core/app_images.dart';
import 'package:profile/pages/about/widget/sections/content_about_widget.dart';

class LargeAboutComponentsWidget extends StatelessWidget {
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
                Expanded(flex: 1, child: ContentAboutWidget()),
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
  return Image.asset(AppImages.profileabout);
}
