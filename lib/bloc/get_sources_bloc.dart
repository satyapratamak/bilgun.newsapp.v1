import 'package:flutter/material.dart';
import 'package:newsapp_v1/model/source_response.dart';
import 'package:newsapp_v1/repository/news_repository.dart';
import 'package:rxdart/rxdart.dart';

class GetSourcesBloc {
  final NewsRepository _repository = NewsRepository();
  final BehaviorSubject<SourceResponse> _subject =
      BehaviorSubject<SourceResponse>();

  getSources() async {
    SourceResponse response = await _repository.getSources();
    _subject.sink.add(response);
  }

  void dispose() async {
    _subject.close();
  }

  BehaviorSubject<SourceResponse> get subject => _subject;
}

final getSourcesBloc = GetSourcesBloc();
