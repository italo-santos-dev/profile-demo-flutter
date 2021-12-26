import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_demo/constants.dart';
import 'package:profile_demo/core/app_icons.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(padding: const EdgeInsets.symmetric(
            vertical: defaultPadding),
          child: Text(
            "knowledge",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        ConhecimentoText(text: "Java, Kotlin"),
        ConhecimentoText(text: "JavaScript, Node JS"),
        ConhecimentoText(text: "Flutter, Dart"),
        ConhecimentoText(text: "Firebase, git, DevOps")
      ],
    );
  }
}
class ConhecimentoText extends StatelessWidget {
  const ConhecimentoText({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset(
            AppIcons.checkIcon,
            width: 16.0,
            height: 16.0,
          ),
          SizedBox(height: defaultPadding / 2),
          Padding(
            padding: const EdgeInsets.only(left: defaultPadding / 2),
            child: Text(text),
          )
        ],
      ),
    );
  }
}