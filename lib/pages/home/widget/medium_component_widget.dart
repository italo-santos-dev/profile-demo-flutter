import 'package:flutter/material.dart';
import 'package:profile_demo/core/app_string.dart';
import 'package:profile_demo/core/core.dart';

class MediumComponentWidget extends StatelessWidget {
  const MediumComponentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0),
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
                              fontSize: 50.0,
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
                  Expanded(
                    flex: 2,
                    child: _buildIllustration(),
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
  return Image.asset(
    AppImages.meio,
    width: 300.0,
    height: 300.0,
  );
}
