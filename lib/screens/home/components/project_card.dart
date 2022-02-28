import 'package:flutter/material.dart';
import 'package:profile_demo/constants.dart';
import 'package:profile_demo/core/app_colors.dart';
import 'package:profile_demo/models/project_beta.dart';
import 'package:profile_demo/pages/project/widget/sections/project_section_widget.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key, required this.project,
  }) : super(key: key);

  final ProjectBeta project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Color(0xFF242430),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(height: defaultPadding,),
          Text(
            project.description!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              height: 1.5,
            ),
          ),
          const SizedBox(height: defaultPadding,),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ProjectSectionWidget(),
                ),
              );
            },
            child: Text(
              "Read More >>",
              style: TextStyle(color: AppColors.stefany),
            ),
          ),
        ],
      ),
    );
  }
}