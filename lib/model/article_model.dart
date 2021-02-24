import 'package:flutter/material.dart';
import 'package:newsapp_v1/model/source_model.dart';

class ArticleModel {
  final SourceModel source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String img;
  final String date;
  final String content;

  ArticleModel(this.source, this.author, this.title, this.description, this.url,
      this.img, this.date, this.content);

  ArticleModel.fromJson(Map<String, dynamic> json)
      : source = SourceModel.fromJson(json["source"]),
        author = json["author"],
        title = json["title"],
        description = json["description"],
        url = json["url"],
        img = json["img"],
        date = json["date"],
        content = json["content"];
}
