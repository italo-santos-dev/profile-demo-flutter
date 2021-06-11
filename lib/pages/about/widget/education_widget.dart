import 'package:flutter/material.dart';
import 'package:profile_demo/core/app_string.dart';
import 'package:profile_demo/core/app_text_style.dart';
import 'package:profile_demo/models/education.dart';
import 'package:profile_demo/utils/education_ultis.dart';

class EducationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}

Widget _buildEducationContainerHeading() {
  return Text(
    Strings.experience,
    style: TextStyles.sub_heading,
  );
}

Widget _buildEducationSummary() {
  return Text(
    'Pleasure, I m a computer technician enchanted by development technologies who is currently studying Flutter, CSharp snd Node JS!',
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
          '${education.from} - ${education.to}',
          style: TextStyles.body,
        ),
      ],
    ),
  );
}
