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
  CategoryModel(name: 'Science', image: 'assets/science.avif'),
  CategoryModel(name: 'Health', image: 'assets/health.avif'),
  CategoryModel(name: 'Entertainment', image: 'assets/entertaiment.avif'),
  CategoryModel(name: 'General', image: 'assets/general.avif'),
  CategoryModel(name: 'Sports', image: 'assets/sports.avif'),
  CategoryModel(name: 'Technology', image: 'assets/technology.jpeg'),
  CategoryModel(name: 'Business', image: 'assets/business.avif'),
];
