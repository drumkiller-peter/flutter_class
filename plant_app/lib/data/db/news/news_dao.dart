import 'dart:developer';

import 'package:drift/drift.dart';
import 'package:plant_app/data/db/app_database.dart';
import 'package:plant_app/data/db/news/news_table.dart';
import 'package:plant_app/main.dart';
import 'package:plant_app/models/news/news_model.dart';

part 'news_dao.g.dart';

@DriftAccessor(tables: [NewsTable])
class NewsDao extends DatabaseAccessor<AppDatabase> with _$NewsDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  NewsDao(super.db);

  Future<List<ArticlesModel>?> getAllNews() async {
    var res = await (select(newsTable)).get();

    if (res.isNotEmpty) {
      return res
          .map((e) => ArticlesModel(
                uuid: e.uuid,
                source: e.sourceModel,
                author: e.author,
                description: e.description,
                url: e.url,
                urlToImage: e.urlToImage,
                publishedAt: e.publishedAt,
                content: e.content,
                title: e.title,
              ))
          .toList();
    }
    return null;
  }

  Future<void> saveNews(ArticlesModel news) async {
    var res = await into(newsTable).insertOnConflictUpdate(
      NewsTableCompanion(
        uuid: Value(
          news.uuid ?? uuid.v4(),
        ),
        source: Value(news.source?.name),
        author: Value(news.author),
        title: Value(news.description),
        description: Value(news.description),
        url: Value(news.url),
        urlToImage: Value(news.urlToImage),
        publishedAt: Value(news.publishedAt),
        content: Value(news.content),
        sourceModel: Value(news.source),
      ),
    );

    log("Saved News: $res");
  }

  Future<int> updateNews(ArticlesModel article) async {
    final res = await (update(newsTable)
          ..where((tbl) => tbl.uuid.equals(article.uuid!)))
        .write(NewsTableCompanion(
      uuid: Value(article.uuid!),
      source: Value(article.source?.name),
      author: Value(article.author),
      title: Value(article.description),
      description: Value(article.description),
      url: Value(article.url),
      urlToImage: Value(article.urlToImage),
      publishedAt: Value(article.publishedAt),
      content: Value(article.content),
      sourceModel: Value(article.source),
    ));
    log("Updated News: $res");
    return res;
  }

  Future<void> deleteNews(String uuid) async {
    final res =
        await (delete(newsTable)..where((tbl) => tbl.uuid.equals(uuid))).go();
    log(res.toString());
  }
}
