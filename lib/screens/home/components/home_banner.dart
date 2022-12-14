import 'package:flutter/material.dart';
import 'package:profile_demo/core/core.dart';
import 'package:profile_demo/pages/about/about_component_widget.dart';

import '../../../constants.dart';
import '../home_screen.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppImages.universe,
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Descubra o incrível universo deste enérgico apaixonado por tecnologias de desenvolvimento de software...",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: defaultPadding),
                MyBuildAnimatedText(),
                // SizedBox(height: defaultPadding),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushReplacement(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => AboutComponentWidget(),
                //       ),
                //     );
                //   },
                //   style: TextButton.styleFrom(
                //     padding: EdgeInsets.symmetric(
                //         horizontal: defaultPadding * 2,
                //         vertical: defaultPadding),
                //     backgroundColor: AppColors.crowned,
                //   ),
                //   child: Text(
                //     "APROVEITE AGORA",
                //     style: TextStyle(color: darkColor),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
