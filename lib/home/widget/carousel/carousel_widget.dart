import 'package:flutter/material.dart';
import 'package:profile/core/app_colors.dart';
import 'package:profile/utils/screen_helper_utils.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
            child: CarouselSlider(),
          ),
        ],
      ),
    );
  }
}
