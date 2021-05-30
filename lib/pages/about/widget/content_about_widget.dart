import 'package:flutter/material.dart';
import 'package:profile/core/app_colors.dart';
import 'package:profile/core/app_fonts.dart';
import 'package:profile/core/app_string.dart';
import 'package:profile/core/app_text_style.dart';
import 'package:profile/models/education.dart';
import 'package:profile/utils/education_ultis.dart';
import 'package:profile/utils/responsive_layout_ultis.dart';
import 'package:profile/utils/skills_ultis.dart';

class ContentAboutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
            height: ResponsiveLayoutUltis.isSmallScreen(context) ? 24.0 : 0.0),
        _buildAboutMe(context),
        SizedBox(height: 4.0),
        _buildHeadline(context),
        SizedBox(
            height: ResponsiveLayoutUltis.isSmallScreen(context) ? 24.0 : 48.0),
        ResponsiveLayoutUltis.isSmallScreen(context)
            ? Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildEducation(),
                  SizedBox(height: 24.0),
                  _buildSkills(context),
                ],
              )
            : _buildSkillsAndEducation(context)
      ],
    );
  }
}

Widget _buildAboutMe(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: 14.0,
        color: AppColors.white,
      ),
      children: <TextSpan>[
        TextSpan(
          text: Strings.about,
          style: TextStyles.heading.copyWith(
            fontFamily: Fonts.nexa_light,
            fontSize: ResponsiveLayoutUltis.isSmallScreen(context) ? 36 : 45.0,
          ),
        ),
        TextSpan(
          text: Strings.me,
          style: TextStyles.heading.copyWith(
            color: AppColors.lightcoral,
            fontSize: ResponsiveLayoutUltis.isSmallScreen(context) ? 36 : 45.0,
          ),
        ),
      ],
    ),
  );
}

Widget _buildHeadline(BuildContext context) {
  return Text(
    ResponsiveLayoutUltis.isSmallScreen(context)
        ? Strings.headline
        : Strings.headline.replaceFirst(RegExp(r' f'), '\nf'),
    style: TextStyles.sub_heading,
  );
}

//Education
Widget _buildEducation() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      _buildEducationContainerHeading(),
      _buildEducationSummary(),
      SizedBox(height: 8.0),
      _buildEducationTimeline(),
    ],
  );
}

Widget _buildEducationContainerHeading() {
  return Text(
    Strings.experience,
    style: TextStyles.sub_heading,
  );
}

Widget _buildEducationSummary() {
  return Text(
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    style: TextStyles.body,
  );
}

Widget _buildEducationTimeline() {
  final List<Widget> widgets =
      educationList.map((education) => _buildEducationTile(education)).toList();
  return Column(children: widgets);
}

Widget _buildEducationTile(Education education) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          '${education.post}',
          style: TextStyles.company,
        ),
        Text(
          '${education.organization}',
          style: TextStyles.body.copyWith(
            color: Color(0xFF45405B),
          ),
        ),
        Text(
          '${education.from}-${education.to}',
          style: TextStyles.body,
        ),
      ],
    ),
  );
}
//Education end

Widget _buildSkills(BuildContext context) {
  final List<Widget> widgets = skills
      .map((skill) => Padding(
            padding: EdgeInsets.only(right: 10.0, top: 10.0),
            child: _buildSkillChip(context, skill),
          ))
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
        child: _buildEducation(),
      ),
      SizedBox(width: 40.0),
      Expanded(
        flex: 1,
        child: _buildSkills(context),
      ),
    ],
  );
}
