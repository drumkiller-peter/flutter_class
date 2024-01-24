import 'package:flutter/material.dart';
import 'package:instagram_ui/ui/modules/home/widgets/post_item.dart';
import 'package:instagram_ui/ui/modules/home/widgets/story_section.dart';

class HomeScreenBodyWidget extends StatelessWidget {
  const HomeScreenBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
        // SliverList.builder(
        //     itemCount: 10,
        //     itemBuilder: (context, index) {
        //       return Container(
        //         height: 40,
        //         color: Colors.green,
        //         margin: const EdgeInsets.only(bottom: 12),
        //       );
        //     }),

        // ListView.separated(itemBuilder: itemBuilder, separatorBuilder: (context, index)=> SizedBox(height: 10,), itemCount: itemCount)
      ],
    );
  }
}
