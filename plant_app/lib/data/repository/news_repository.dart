import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:plant_app/configs/di/service_locator.dart';
import 'package:plant_app/data/cache/news_cache.dart';
import 'package:plant_app/data/db/news/news_dao.dart';
import 'package:plant_app/models/news/news_model.dart';

class NewsRepository {
  Dio dio = getIt.get<Dio>();
  NewsCache newsCache = getIt.get<NewsCache>();
  NewsDao newsDao = getIt.get<NewsDao>();

  Future<(NewsModel?, List<ArticlesModel>?)> getNews() async {
    try {
      var newsFromDb = await _getNewsFromLocalDb();

      if (newsFromDb == null || newsFromDb.isEmpty) {
        var res = await dio.get("?q=bitcoin");
        var data = NewsModel.fromJson(res.data);
        await newsCache.saveNews(data);
        for (var element in data.articles ?? []) {
          await newsDao.saveNews(element);
        }

        return (data, await _getNewsFromLocalDb());
      } else {
        return (null, newsFromDb);
      }
      // var newsFromCache = await newsCache.getNews();
      // var newsFromDb = await appDatabase.getAllNews();
      // if (newsFromCache == null) {
      //   // if (newsFromCache.isEmpty) {
      //   var res = await dio.get("?q=bitcoin");
      //   var data = NewsModel.fromJson(res.data);
      //   await newsCache.saveNews(data);
      //   for (var element in data.articles ?? []) {
      //     await appDatabase.saveNews(element);
      //   }
      //   return data;
      // } else {
      //   return newsFromCache;
      // }
    } catch (e) {
      log("Exception in NewsRepository: $e");
    }
    return (null, null);
  }

  Future<List<ArticlesModel>?> _getNewsFromLocalDb() async {
    return await newsDao.getAllNews();
  }

  Future<void> deleteNews(String uuid) async {
    await newsDao.deleteNews(uuid);
  }
}
