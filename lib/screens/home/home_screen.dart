import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_demo/constants.dart';
import 'package:profile_demo/core/app_colors.dart';
import 'package:profile_demo/models/project_beta.dart';
import 'package:profile_demo/pages/project/widget/sections/project_section_widget.dart';
import 'package:profile_demo/screens/home/components/highlights.dart';
import 'package:profile_demo/screens/main/main_screen.dart';

import 'components/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: projectsBeta.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
          ),
          itemBuilder: (context, index) => ProjectCard(),
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.stefany,
      child: Column(
        children: [
          Text(
            projectsBeta[0].title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            projectsBeta[0].description!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              height: 1.5,
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          Text.rich(
            TextSpan(
              text: "<",
              children: [
                TextSpan(
                  text: "/",
                  style: TextStyle(color: AppColors.stefany),
                ),
                TextSpan(text: "> ")
              ],
            ),
          ),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                "Atualmente estou esmiuçando Java e Flutter",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "Alcançando de forma contínua e prática",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "Mas estou sempre aberto para descobrir coisas novas",
                speed: Duration(milliseconds: 60),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
