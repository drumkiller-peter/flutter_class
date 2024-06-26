import 'dart:convert';
import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:plant_app/models/news/news_model.dart';

class NewsCache {
  final String _boxName = "news-box";
  final String _newsKey = "news---";
  Future<Box<String>> getBox() async {
    return await Hive.openBox<String>(_boxName);
  }

  Future<NewsModel?> getNews() async {
    var box = await getBox();
    log(box.path ?? "");
    var res = box.get(_newsKey);
    if (res != null) {
      return NewsModel.fromJson(jsonDecode(res));
    }
    return null;
  }

  Future<void> saveNews(NewsModel news) async {
    var box = await getBox();
    return box.put(_newsKey, jsonEncode(news.toJson()));
  }

  Future<void> deleteNews() async {
    var box = await getBox();
    return box.delete(_newsKey);
  }
}
