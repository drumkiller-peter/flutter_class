import 'package:flutter/material.dart';

class TopComponent extends StatelessWidget {
  const TopComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/img_1.png",
        ),
        Image.network(
            "https://hips.hearstapps.com/hmg-prod/images/2019-honda-civic-sedan-1558453497.jpg"),
      ],
    );
  }
}
