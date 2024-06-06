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

  Future<ResponseTypeEnum> addPost(PostModel postModel) async {
    try {
      print(postModel.toJson());
      final res = await _dio.post(
        AppConstants.posts,
        data: postModel.toJson(),
      );
      if (res.statusCode == 200 || res.statusCode == 201) {
        return ResponseTypeEnum.success;
      }
      return ResponseTypeEnum.failure;
    } catch (e) {
      // return  ResponseTypeEnum.failure;
      rethrow;
    }
  }

  Future<ResponseTypeEnum> updatedPost(int id) async {
    try {
      // print(postModel.toJson());
      final res = await _dio.put(
        AppConstants.posts,
        data: {
          "id": id,
        },
      );
      if (res.statusCode == 200 || res.statusCode == 201) {
        return ResponseTypeEnum.success;
      }
      return ResponseTypeEnum.failure;
    } catch (e) {
      // return  ResponseTypeEnum.failure;
      rethrow;
    }
  }

  /// endpoint ==>  /posts/:id/comments/:id/something

  Future<ResponseTypeEnum> deletePost(int id) async {
    try {
      final res = await _dio.delete(
        "${AppConstants.posts}/$id",
      );
      if (res.statusCode == 200 || res.statusCode == 201) {
        return ResponseTypeEnum.success;
      }
      return ResponseTypeEnum.failure;
    } catch (e) {
      // return  ResponseTypeEnum.failure;
      rethrow;
    }
  }
}

enum ResponseTypeEnum { success, failure }
