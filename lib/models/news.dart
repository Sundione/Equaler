class news {
  final String newsTitle;
  final List<String> newsCategories;
  final String newsDescription;
  final String newsContent;
  final String newsImage;
  final String newsSource;

  news(
      {required this.newsTitle,
      required this.newsCategories,
      required this.newsDescription,
      required this.newsContent,
      required this.newsImage,
      required this.newsSource});

  factory news.fromJson(Map<String, dynamic> json) {
    return news(
        newsTitle: json['title'],
        newsCategories: json['category'],
        newsDescription: json['description'],
        newsContent: json['content'],
        newsImage: json['image_url'],
        newsSource: json['link']);
  }
}
