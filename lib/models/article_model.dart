class ArticleModel {
  final String? image;
  final String title;
  final String? description;

  ArticleModel({required this.image, required this.title, required this.description});
  
  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json['urlToImage'] as String?,
      title: json['title'] as String,
      description: json['description'] as String?,
    );
  }
}

