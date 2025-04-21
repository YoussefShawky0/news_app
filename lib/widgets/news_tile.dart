import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.article});
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              article.image ??
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3jhdlr9vMe9nEqiYaAwr4h-jMrmr_fhiqVw&s',
              errorBuilder: (context, error, stackTrace) {
                return const Center(
                  child: Icon(Icons.broken_image, size: 50, color: Colors.grey),
                );
              },
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            article.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'BungeeSpice',
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            article.description ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14.0,
              fontFamily: 'PosetsenOne',
              color: Color.fromARGB(255, 130, 130, 130),
            ),
          ),
        ],
      ),
    );
  }
}
