// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_ui/ui/modules/home/bloc/home_bloc.dart';
import 'package:instagram_ui/ui/modules/home/widgets/post_item.dart';
import 'package:instagram_ui/ui/modules/home/widgets/story_section.dart';
import 'package:instagram_ui/utils/app_snackbar.dart';

class HomeScreenBodyWidget extends StatelessWidget {
  const HomeScreenBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is HomeDataLoadSuccess) {
          AppSnackBar.showSnackBar(context, "Home data is loaded");
        }
      },
      child: BlocBuilder<HomeBloc, HomeState>(
        // buildWhen: (previous, current) =>
        //     current is HomeDataLoadFailure || current is HomeDataLoadSuccess,
        builder: (context, state) {
          if (state is HomeLoadInProgress) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomeDataLoadSuccess) {
            return CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(height: 12),
                ),
                const StorySection(),
                SliverList.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const PostItem();
                  },
                ),
              ],
            );
          } else {
            return const Center(
              child: Text('Something went wrong'),
            );
          }
        },
      ),
    );
  }
}

class A {
  final int age;
  A({
    required this.age,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'age': age,
    };
  }

  factory A.fromMap(Map<String, dynamic> map) {
    return A(
      age: map['age'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory A.fromJson(String source) =>
      A.fromMap(json.decode(source) as Map<String, dynamic>);

  A copyWith({
    int? age,
  }) {
    return A(
      age: age ?? this.age,
    );
  }
}
