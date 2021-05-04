import 'package:flutter/material.dart';
import 'package:profile/core/app_colors.dart';
import 'package:profile/utils/screen_helper_utils.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_slider/carousel_slider.dart';
import 'package:responsive_framework/responsive_framework.dart';

// ignore: must_be_immutable
class CarouselWidget extends StatelessWidget {
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    double carouselContainerHeight = MediaQuery.of(context).size.height *
        (ScreenHelperUtils.isMobile(context) ? .7 : .85);
    return Container(
      width: double.infinity,
      height: carouselContainerHeight,
      color: AppColors.violetred,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                viewportFraction: 1,
                scrollPhysics: NeverScrollableScrollPhysics(),
                height: carouselContainerHeight,
              ),
              items: List.generate(
                5,
                (index) => Builder(
                  builder: (BuildContext context) {
                    return Container(
                      constraints: BoxConstraints(
                        maxHeight: carouselContainerHeight,
                      ),
                    );
                  },
                ),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildDesktop(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: 1000.0,
      minWidth: 1000.0,
      defaultScale: false,
      child: Row(
        children: [
          Expanded(
            child: text,
          ),
          Expanded(
            child: image,
          ),
        ],
      ),
    ),
  );
}
