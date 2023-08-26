class Article {
  late String title;
  late String author;
  late String urlImage;
  late String publishAt;
  late String description;

  Article({
    required this.title,
    required this.urlImage,
    required this.publishAt,
    required this.description,
    required this.author,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'],
      urlImage: json['urlImage'],
      publishAt: json['publishAt'],
      description: json['description'],
      author: json['author'],
    );
  }
}
