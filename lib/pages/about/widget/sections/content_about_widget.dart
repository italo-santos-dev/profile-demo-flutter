import 'package:flutter/material.dart';
import 'package:profile_demo/core/app_string.dart';
import 'package:profile_demo/core/app_text_style.dart';
import 'package:profile_demo/pages/about/widget/education_widget.dart';
import 'package:profile_demo/utils/responsive_layout_ultis.dart';
import 'package:profile_demo/utils/skills_ultis.dart';

import '../aboutme_widget.dart';

class ContentAboutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AboutmeWidget(),
        SizedBox(height: 4.0),
        _buildHeadline(context),
        SizedBox(
            height: ResponsiveLayoutUltis.isSmallScreen(context) ? 24.0 : 48.0),
        ResponsiveLayoutUltis.isSmallScreen(context)
            ? Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EducationWidget(),
                  SizedBox(height: 24.0),
                  _buildSkills(context),
                ],
              )
            : _buildSkillsAndEducation(context),
      ],
    );
  }
}

Widget _buildHeadline(BuildContext context) {
  return Text(
    ResponsiveLayoutUltis.isSmallScreen(context)
        ? Strings.headline
        : Strings.headline.replaceFirst(RegExp(r' f'), '\nf'),
    textAlign: TextAlign.justify,
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
