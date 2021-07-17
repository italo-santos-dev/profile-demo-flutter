import 'package:flutter/material.dart';
import 'package:profile_demo/pages/about/widget/sections/content_about_widget.dart';

class MediumAboutComponentWidget extends StatelessWidget {
  const MediumAboutComponentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 28.0,
          left: 48.0,
          right: 48.0,
          bottom: 28.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(flex: 1, child: ContentAboutWidget()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
