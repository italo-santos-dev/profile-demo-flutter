import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:profile/core/app_images.dart';

class PersonComponentWidget extends StatelessWidget {
  const PersonComponentWidget({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
              BoxConstraints(maxWidth: 2000, maxHeight: 1110),
 width: double.infinity,
      child: Image.asset(AppImages.logo),
    );
  }
}
