import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F4E1),
      appBar: AppBar(
        title: Text(
          category,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'BungeeSpice',
            color: Colors.blue,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 79, 75, 54),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomScrollView(
          slivers: [NewsListViewBuilder(category: category)],
        ),
      ),
    );
  }
}
