import 'package:flutter/material.dart';
import 'package:profile/core/app_colors.dart';

import 'package:profile/core/app_images.dart';

class AboutComponentWidget extends StatefulWidget {
  @override
  _AboutComponentWidgetState createState() => _AboutComponentWidgetState();
}

class _AboutComponentWidgetState extends State<AboutComponentWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                Image.asset(
                  AppImages.profilei,
                  width: 100.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: <Widget>[
                    Text("Dev Italo Santos"),
                    Text("Id id esse in culpa"),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        IconTile(
                          imgAssetPath: AppImages.logo,
                          backColor: AppColors.purple,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IconTile extends StatelessWidget {
  String imgAssetPath;
  Color backColor;

  IconTile({required this.imgAssetPath, required this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
