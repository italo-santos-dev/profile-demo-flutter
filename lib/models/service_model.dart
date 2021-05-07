import 'package:flutter/material.dart';
import 'package:profile/core/app_colors.dart';
import 'package:profile/core/app_images.dart';

class ServiceModel {
  final int id;
  final String title, image;
  final Color color;

  ServiceModel({
    required this.id,
    required this.title,
    required this.image,
    required this.color,
  });
}

List<ServiceModel> servicesModel = [
  ServiceModel(
    id: 1,
    title: "teste teste",
    image: AppImages.logo,
    color: AppColors.maroon,
  ),
  ServiceModel(
    id: 2,
    title: "teste teste",
    image: AppImages.logo,
    color: AppColors.maroon,
  ),
  ServiceModel(
    id: 3,
    title: "teste teste",
    image: AppImages.logo,
    color: AppColors.maroon,
  ),
  ServiceModel(
    id: 4,
    title: "teste teste",
    image: AppImages.logo,
    color: AppColors.maroon,
  ),
];
