import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:plant_app/configs/constants/app_constatnts.dart';
import 'package:plant_app/configs/di/service_locator.dart';
import 'package:plant_app/models/home/post_model.dart';

class HomeRepository {
  final Dio _dio = getIt.get<Dio>();

  Future<List<PostModel>> getHomeScreenData() async {
    List<PostModel> posts = [];

    var response = await _dio.get(
      AppConstants.posts,
      // "${AppConstants.posts}?_page=2&_limit=15",
      queryParameters: {
        "_page": 4,
        "_limit": 15,
      },
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer Saina",
        },
      ),
    );

    /// get
    /// post
    /// delete
    /// put -> update
    /// patch -> update

    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;
      log(data.toString());

      for (var item in data) {
        posts.add(PostModel.fromJson(item));
      }
      return posts;
    }
    return posts;
  }

  Future<void> addPost() async {
    var response = await _dio.post(
      "posts",
      data: {
        "title": "foo",
        "body": "bar",
        "userId": -1,
      },
    );
    log(response.data.toString());

    // getHomeScreenData("1");
  }
}
