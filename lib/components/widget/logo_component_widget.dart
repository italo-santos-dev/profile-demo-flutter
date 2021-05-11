import 'package:flutter/material.dart';
import 'package:profile/components/widget/glass_content_compenents_widget.dart';
import 'package:profile/core/app_images.dart';

class LogoComponentWidget extends StatelessWidget {
  const LogoComponentWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Image.asset(AppImages.logo),
        Spacer(),
        GlassContentCompenentsWidget(size: size),
        Spacer(flex: 3),
      ],
    );
  }
}
