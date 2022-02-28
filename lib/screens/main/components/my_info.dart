import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_demo/constants.dart';
import 'package:profile_demo/core/app_images.dart';
import 'package:profile_demo/core/app_string.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key:  key);

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 2,
            ),
            CircleAvatar(
              radius: 50.0,
              backgroundImage:
              AssetImage(AppImages.profilei),
            ),
            Spacer(),
            Text(
              Strings.home_i_beta,
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            Text(
              Strings.home_head_beta,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5
              ),
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}