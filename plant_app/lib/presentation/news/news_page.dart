import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_app/configs/di/service_locator.dart';
import 'package:plant_app/data/repository/news_repository.dart';
import 'package:plant_app/models/news/news_model.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  bool isLoading = false;
  NewsModel? newsModel;
  List<ArticlesModel>? articlesModel;
  @override
  void initState() {
    _fetchNews();
    super.initState();
  }

  Future<void> _fetchNews() async {
    setState(() {
      isLoading = true;
    });
    final newsRepository = getIt.get<NewsRepository>();
    final res = await newsRepository.getNews();
    setState(() {
      isLoading = false;
      newsModel = res.$1;
      articlesModel = res.$2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News Page"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SafeArea(
          child: isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: articlesModel?.length,
                  itemBuilder: (c, i) {
                    return ListTile(
                      onTap: () {
                        context.push("/login");
                      },
                      title: Text(articlesModel?[i].source?.name ?? ""),
                      subtitle: Text(articlesModel?[i].uuid ?? ""),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () async {
                          await getIt
                              .get<NewsRepository>()
                              .deleteNews(articlesModel?[i].uuid ?? "");

                          await _fetchNews();
                        },
                      ),
                    );
                  })),
    );
  }
}
