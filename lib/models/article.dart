import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';
  // buid runner command
  // flutter pub run build_runner build

// flutter pub run build_runner build --delete-conflicting-outputs

@JsonSerializable(explicitToJson: true)
class Article {
  final String? type;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;
  final List<Section>? sections;
  

  Article({
    this.type,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
    this.sections,
  });
  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Section {
  final String type;
  final String heading;

  final String description;

  Section({
    required this.type,
    required this.heading,
    required this.description,
  });
  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
  Map<String, dynamic> toJson() => _$SectionToJson(this);
}
