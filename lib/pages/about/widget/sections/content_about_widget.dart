import 'package:flutter/material.dart';
import 'package:profile/core/app_default.dart';
import 'package:profile/core/app_string.dart';
import 'package:profile/core/app_text_style.dart';
import 'package:profile/pages/about/widget/aboutme_widget.dart';
import 'package:profile/pages/about/widget/education_widget.dart';
import 'package:profile/utils/responsive_layout_ultis.dart';
import 'package:profile/utils/skills_ultis.dart';

class ContentAboutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900.0, minHeight: 700.0),
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200.0,
        child: Stack(
          children: <Widget>[
            SizedBox(
                height:
                    ResponsiveLayoutUltis.isSmallScreen(context) ? 24.0 : 0.0),
            AboutmeWidget(),
            SizedBox(height: 4.0),
            _buildHeadline(context),
            SizedBox(
                height:
                    ResponsiveLayoutUltis.isSmallScreen(context) ? 24.0 : 48.0),
            ResponsiveLayoutUltis.isSmallScreen(context)
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      EducationWidget(),
                      SizedBox(height: 24.0),
                      _buildSkills(context),
                    ],
                  )
                : _buildSkillsAndEducation(context)
          ],
        ),
      ),
    );
  }
}

Widget _buildHeadline(BuildContext context) {
  return Text(
    ResponsiveLayoutUltis.isSmallScreen(context)
        ? Strings.headline
        : Strings.headline.replaceFirst(RegExp(r' f'), '\nf'),
    style: TextStyles.sub_heading,
  );
}

//Education end

Widget _buildSkills(BuildContext context) {
  final List<Widget> widgets = skills
      .map(
        (skill) => Padding(
          padding: EdgeInsets.only(right: 10.0, top: 10.0),
          child: _buildSkillChip(context, skill),
        ),
      )
      .toList();

  return Column(
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      _buildSkillsContainerHeading(),
      Wrap(children: widgets),
//        _buildNavigationArrows(),
    ],
  );
}

Widget _buildSkillChip(BuildContext context, String label) {
  return Chip(
    label: Text(
      label,
      style: TextStyles.chip.copyWith(
        fontSize: ResponsiveLayoutUltis.isSmallScreen(context) ? 10.0 : 11.0,
      ),
    ),
  );
}

Widget _buildSkillsContainerHeading() {
  return Text(
    Strings.skills_i_have,
    style: TextStyles.sub_heading,
  );
}

Widget _buildSkillsAndEducation(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Expanded(
        flex: 1,
        child: EducationWidget(),
      ),
      SizedBox(width: 40.0),
      Expanded(
        flex: 1,
        child: _buildSkills(context),
      ),
    ],
  );
}
