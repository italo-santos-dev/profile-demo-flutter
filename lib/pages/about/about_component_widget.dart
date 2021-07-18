import 'package:flutter/material.dart';
import 'package:profile_demo/core/app_colors.dart';
import 'package:profile_demo/core/app_default.dart';

import 'package:profile_demo/utils/responsive_layout_ultis.dart';

import 'widget/responsive/large_about_components_widget.dart';
import 'widget/responsive/medium_about_component_widget.dart';
import 'widget/responsive/small_about_component_widget.dart';

class AboutComponentWidget extends StatelessWidget {
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
        child: Stack(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return buildBody(context, constraints);
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildBody(BuildContext context, BoxConstraints constraints) {
  return SingleChildScrollView(
    child: ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: constraints.maxHeight,
      ),
      child: ResponsiveLayoutUltis(
        largeScreen: LargeAboutComponentsWidget(),
        mediumScreen: MediumAboutComponentWidget(),
        smallScreen: SmallAboutComponentWidget(),
      ),
    ),
  );
}
