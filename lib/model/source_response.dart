import 'package:newsapp_v1/model/source_model.dart';

class SourceResponse {
  final List<SourceModel> articles;
  final String error;

  SourceResponse(this.articles, this.error);

  SourceResponse.fromJson(Map<String, dynamic> json)
      : articles = (json["articles"] as List)
            .map((i) => new SourceModel.fromJson(i))
            .toList(),
        error = "";
  SourceResponse.withError(String errorValue)
      : articles = List(),
        error = errorValue;
}
