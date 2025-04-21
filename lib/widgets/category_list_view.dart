import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(item: categories[index]);
        },
      ),
    );
  }
}

final List<CategoryModel> categories = [
  CategoryModel(name: 'science', image: 'assets/science.avif'),
  CategoryModel(name: 'health', image: 'assets/health.avif'),
  CategoryModel(name: 'entertainment', image: 'assets/entertaiment.avif'),
  CategoryModel(name: 'general', image: 'assets/general.avif'),
  CategoryModel(name: 'sports', image: 'assets/sports.avif'),
  CategoryModel(name: 'technology', image: 'assets/technology.jpeg'),
  CategoryModel(name: 'business', image: 'assets/business.avif'),
];
