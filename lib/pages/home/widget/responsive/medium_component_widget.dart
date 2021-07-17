import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_demo/core/app_string.dart';
import 'package:profile_demo/core/core.dart';
import 'package:profile_demo/utils/responsive_layout_ultis.dart';

class MediumComponentWidget extends StatelessWidget {
  const MediumComponentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 28.0,
          left: 48.0,
          right: 48.0,
          bottom: 28.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.bem_vindo,
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                            color: AppColors.white,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: Strings.home_i,
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: AppColors.white,
                              height: 1.3,
                            ),
                          ),
                        ),
                        Text(
                          Strings.home_explore,
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildIllustration(),
                  Divider(),
                  SizedBox(
                    height: ResponsiveLayoutUltis.isSmallScreen(context)
                        ? 12.0
                        : 0.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildIllustration() {
  return SvgPicture.asset(
    AppImages.profilehomequite,
    semanticsLabel: 'Middle home profile ',
    width: 200.0,
    height: 200.0,
  );
}
