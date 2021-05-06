import 'package:flutter/material.dart';
import 'package:profile/core/app_colors.dart';
import 'package:profile/core/app_images.dart';

class FeedBackModel {
  final String name, review, userPic;
  final int id;
  final Color color;

  FeedBackModel({
    required this.name,
    required this.review,
    required this.userPic,
    required this.id,
    required this.color,
  });
}

List<FeedBackModel> feedbacksmodel = [
  FeedBackModel(
    id: 1,
    name: "Werik Nalyson",
    review: review,
    userPic: AppImages.logo,
    color: AppColors.maroon,
  ),
  FeedBackModel(
    id: 2,
    name: "Werik Nalyson",
    review: review,
    userPic: "assets/profile_logo.png",
    color: AppColors.maroon,
  ),
  FeedBackModel(
    id: 3,
    name: "Werik Nalyson",
    review: review,
    userPic: "assets/profile_logo.png",
    color: AppColors.maroon,
  )
];

String review =
    'Lorem  ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor inicididunt ut labore.';
