// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "totalResults") int? totalResults,
    @JsonKey(name: "articles") List<ArticlesModel>? articles,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}

@freezed
class ArticlesModel with _$ArticlesModel {
  const factory ArticlesModel({
    @JsonKey(name: "uid") String? uuid,
    @JsonKey(name: "source") SourceModel? source,
    @JsonKey(name: "author") String? author,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "urlToImage") String? urlToImage,
    @JsonKey(name: "publishedAt") String? publishedAt,
    @JsonKey(name: "content") String? content,
  }) = _ArticlesModel;

  factory ArticlesModel.fromJson(Map<String, dynamic> json) =>
      _$ArticlesModelFromJson(json);
}

@freezed
class SourceModel with _$SourceModel {
  const factory SourceModel({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "name") String? name,
  }) = _SourceModel;

  factory SourceModel.fromJson(Map<String, dynamic> json) =>
      _$SourceModelFromJson(json);
}




// var x = {
//   "status": "ok",
//   "totalResults": 10661,
//   "articles": [
//     {
//       "source": {"id": null, "name": "Gizmodo.com"},
//       "author": "Vinamrata Chaturvedi, Quartz",
//       "title": "Everything to Know About Bitcoin Pizza Day",
//       "description":
//           "On May 22, 2010, a man in Florida paid 10,000 Bitcoin for pizza.Read more...",
//       "url":
//           "https://gizmodo.com/bitcoin-pizza-day-date-origin-history-cryptocurrency-1851487831",
//       "urlToImage":
//           "https://i.kinja-img.com/image/upload/c_fill,h_675,pg_1,q_80,w_1200/98aec6479bad523f5c89763f4acf0cf9.jpg",
//       "publishedAt": "2024-05-20T13:20:00Z",
//       "content":
//           "On January 3, 2009, Bitcoins creator, Satoshi Nakamoto, mined the first block of the Bitcoin blockchain, known as the Genesis Block, which contained a reward of 50 Bitcoin. The technical foundations … [+1156 chars]"
//     },
//   ]
// };