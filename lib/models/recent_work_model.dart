import 'package:profile/core/app_images.dart';

class RecentWorkModel {
  final String image, category, title;
  final int id;

  RecentWorkModel({
    required this.image,
    required this.category,
    required this.title,
    required this.id,
  });
}

//Demo List of my works
List<RecentWorkModel> recentWorksModel = [
  RecentWorkModel(
    image: AppImages.logo,
    category: "teste",
    title: "Teste teste teste teste",
    id: 1,
  ),
  RecentWorkModel(
    image: AppImages.logo,
    category: "teste",
    title: "Teste teste teste teste",
    id: 2,
  ),
  RecentWorkModel(
    image: AppImages.logo,
    category: "teste",
    title: "Teste teste teste teste",
    id: 3,
  ),
  RecentWorkModel(
    image: AppImages.logo,
    category: "teste",
    title: "Teste teste teste teste",
    id: 4,
  ),
];
