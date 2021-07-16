import 'package:flutter/material.dart';
import 'package:profile_demo/pages/about/widget/sections/content_about_widget.dart';
import 'package:profile_demo/utils/responsive_layout_ultis.dart';

class SmallAboutComponentWidget extends StatelessWidget {
  const SmallAboutComponentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 38.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(flex: 1, child: ContentAboutWidget()),
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
