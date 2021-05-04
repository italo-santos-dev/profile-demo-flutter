import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/core/app_colors.dart';
import 'package:profile/core/app_images.dart';
import 'package:profile/models/carousel_itens_model.dart';

List<CarouselItensModel> carouselItems = List.generate(
  5,
  (index) => CarouselItensModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "SOFTWARE DEVELOPER",
            style: GoogleFonts.oswald(
              color: AppColors.purple,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 18.0,
          ),
          Text(
            "Italo\nSantos",
            style: GoogleFonts.oswald(
              color: AppColors.maroon,
              fontWeight: FontWeight.w900,
              fontSize: 40.0,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Entranced by development technologies!",
            style: TextStyle(
              color: AppColors.maroon,
              fontSize: 15.0,
              height: 1.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Wrap(
              children: [
                Text(
                  "Need a full custom website?",
                  style: TextStyle(
                    color: AppColors.maroon,
                    fontSize: 15.0,
                    height: 1.5,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      "Got a projetos let's talk",
                      style: TextStyle(
                        color: AppColors.purple,
                        fontSize: 15.0,
                        height: 1.5,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.buttonObservers,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48.0,
              padding: EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                      color: AppColors.buttonObservers,
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),),
            ),
          )
        ],
      ),
    ),
    image: Container(
      child: Image.asset(
        AppImages.logo,
        fit: BoxFit.contain,
      ),
    ),
  ),
);
