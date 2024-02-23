// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
      publishedAt: json['publishedAt'] as String?,
      content: json['content'] as String?,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
      'sections': instance.sections?.map((e) => e.toJson()).toList(),
    };

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
      type: json['type'] as String,
      heading: json['heading'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'type': instance.type,
      'heading': instance.heading,
      'description': instance.description,
    };
