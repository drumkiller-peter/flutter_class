
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 60,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == 0 ? Colors.pinkAccent : Colors.blue),
                margin: const EdgeInsets.only(
                  bottom: 12,
                  right: 12,
                ),
              );
            }),
      ),
    );
  }
}
