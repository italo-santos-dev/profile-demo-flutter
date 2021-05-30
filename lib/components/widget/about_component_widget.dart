import 'package:flutter/material.dart';
import 'package:profile/core/app_colors.dart';
import 'package:profile/core/app_default.dart';
import 'package:profile/core/app_fonts.dart';
import 'package:profile/core/app_images.dart';
import 'package:profile/core/app_string.dart';
import 'package:profile/core/app_text_style.dart';
import 'package:profile/models/education.dart';
import 'package:profile/utils/education_ultis.dart';
import 'package:profile/utils/responsive_layout_ultis.dart';
import 'package:profile/utils/skills_ultis.dart';

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
        width: 1200.0,
        child: Stack(
          children: [
            LayoutBuilder(builder: (context, constraints) {
              return _buildBody(context, constraints);
            }),
          ],
        ),
      ),
    );
  }
}

Widget _buildContent(BuildContext context) {
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

Widget _buildIllustration() {
  return Image.asset(AppImages.profileabout);
}

Widget _buildBody(BuildContext context, BoxConstraints constraints) {
  return SingleChildScrollView(
    child: ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: constraints.maxWidth, minHeight: constraints.maxHeight),
      child: ResponsiveLayoutUltis(
        largeScreen: _buildLargeScreen(context),
        mediumScreen: _buildMediumScreen(context),
        smallScreen: _buildSmallScreen(context),
      ),
    ),
  );
}

Widget _buildLargeScreen(BuildContext context) {
  return IntrinsicHeight(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(flex: 1, child: _buildContent(context)),
              _buildIllustration(),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildMediumScreen(BuildContext context) {
  return IntrinsicHeight(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(flex: 1, child: _buildContent(context)),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildSmallScreen(BuildContext context) {
  return IntrinsicHeight(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(flex: 1, child: _buildContent(context)),
        Divider(),
        SizedBox(
            height: ResponsiveLayoutUltis.isSmallScreen(context) ? 12.0 : 0.0),
      ],
    ),
  );
}

Widget _buildAboutMe(BuildContext context) {
  return RichText(
    text: TextSpan(
      // Note: Styles for TextSpans must be explicitly defined.
      // Child text spans will inherit styles from parent
      style: TextStyle(
        fontSize: 14.0,
        color: Colors.black,
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
            color: AppColors.purple,
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

Widget _buildSkills(BuildContext context) {
  final List<Widget> widgets = skills
      .map((skill) => Padding(
            padding: EdgeInsets.only(right: 8.0),
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

Widget _buildSkillsContainerHeading() {
  return Text(
    Strings.skills_i_have,
    style: TextStyles.sub_heading,
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
