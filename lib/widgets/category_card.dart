import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/pages/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.item});

  final CategoryModel item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: item.name);
            },
          ),
        );
        ;
      },
      child: Container(
        margin: const EdgeInsets.all(12.0),
        width: 190,
        height: 110,
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(18.0),
          image: DecorationImage(
            image: AssetImage(item.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            item.name,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'BungeeSpice',
            ),
          ),
        ),
      ),
    );
  }
}
