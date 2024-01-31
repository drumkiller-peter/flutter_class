import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_ui/ui/modules/home/bloc/home_bloc.dart';
import 'package:instagram_ui/ui/modules/home/widgets/user_detail_widget.dart';
import 'package:readmore/readmore.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserDetailWidget(),
              Image.network(
                "https://picsum.photos/200/500",
                height: 400,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      BlocProvider.of<HomeBloc>(context)
                          .add(HomeLikeCountIncrementRequested(
                        likesCount:
                            state is HomeDataLoadSuccess ? state.likesCount : 0,
                      ));
                    },
                    icon: const Icon(Icons.favorite_border_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.comment_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send_outlined),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_border_outlined),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        if (state is HomeDataLoadSuccess) {
                          return Text("${state.likesCount} likes");
                        } else {
                          return const Text("0 likes");
                        }
                      },
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pubity",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        // Expanded(
                        //   child: Text(
                        //       "Dolore dolore Excepteur dolore anim velit do ut ex consequat elit labore sunt excepteur. Dolore est non velit occaecat esse incididunt. Eu officia id enim exercitation ut veniam aute eu veniam nostrud mollit laboris minim commodo. In culpa aute cillum nostrud est commodo."),
                        // ),
                        Expanded(
                          child: ReadMoreText(
                            "Flutter is Google's mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.",
                            trimLines: 2,
                            colorClickableText: Colors.pink,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: ' more',
                            trimExpandedText: ' less',
                            moreStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                            lessStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
