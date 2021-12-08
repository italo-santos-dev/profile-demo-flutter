import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_demo/constants.dart';
import 'package:profile_demo/screens/main/components/area_info_text.dart';
import 'package:profile_demo/screens/main/components/my_info.dart';
import 'package:profile_demo/screens/main/components/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
         MyInfo(),
         Expanded(
             child: SingleChildScrollView(
               padding: EdgeInsets.all(defaultPadding),
               child: Column(
                 children: [
                   AreaInfoText(
                     title: "Residence",
                     text: "Fortaleza",
                   ),
                   AreaInfoText(
                     title: "City",
                     text: "Maracanau",
                   ),
                   AreaInfoText(
                     title: "Age",
                     text: "22",
                   ),
                   Skills(),
                   SizedBox(height: defaultPadding),
                   Coding()
                 ],
               ),
             )
          )
        ],
      ),
    );
  }
}


class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        )
      ],
    );
  }
}