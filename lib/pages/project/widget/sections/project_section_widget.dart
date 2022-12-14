import 'package:flutter/material.dart';
import 'package:profile_demo/core/app_default.dart';
import 'package:profile_demo/core/core.dart';
import 'package:profile_demo/screens/home/home_screen.dart';
import 'package:profile_demo/tabs/projects_tab.dart';

class ProjectSectionWidget extends StatelessWidget {
  const ProjectSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.crowned,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            }),
      ),
      body: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints(maxHeight: 900.0, minHeight: 700.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.beautiful,
        ),
        child: Container(
          margin: EdgeInsets.only(top: kDefaultPadding),
          child: Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  return ProjectsTab();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
