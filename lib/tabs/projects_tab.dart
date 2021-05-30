import 'package:flutter/material.dart';
import 'package:profile/pages/projects_component_widget.dart';
import 'package:profile/utils/projects.dart';
import 'package:profile/utils/responsive_layout_ultis.dart';

class ProjectsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutUltis(
      largeScreen: GridView.count(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
        crossAxisCount: 3,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.3),
        children: List.generate(
          projects.length,
          (index) => ProjecComponentWidget(projects[index], 0),
        ),
      ),
      smallScreen: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) => ProjecComponentWidget(
          projects[index],
          (index == projects.length - 1 ? 16.0 : 0),
        ),
      ),
      mediumScreen: Container(),
    );
  }
}
