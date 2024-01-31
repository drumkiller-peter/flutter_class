import 'dart:developer';

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ScrollController scrollController = ScrollController();
  bool showTitle = false;

  @override
  void initState() {
    // TODO: implement initState

    scrollController.addListener(() {
      // if (scrollController.offset > 100) {
      //   print("offset is ${scrollController.offset}");
      // }

      log(scrollController.offset.toString());
      if (scrollController.offset > 300) {
        setState(() {
          showTitle = true;
        });
      } else {
        setState(() {
          showTitle = false;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
            controller: scrollController,
            headerSliverBuilder: (context, value) {
              return [
                SliverAppBar(
                  title: showTitle ? const Text("Profile") : const SizedBox(),
                  pinned: true,
                  floating: false,
                  snap: false,
                  expandedHeight: 450,
                  flexibleSpace: const FlexibleSpaceBar(
                    background: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image(
                          image: NetworkImage(
                            "https://picsum.photos/200/500",
                          ),
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "This is title",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  bottom: const TabBar(indicatorColor: Colors.red, tabs: [
                    // Tab(
                    //   text: "Tab 1",
                    // ),
                    Text("HELLO"),
                    Tab(
                      text: "Tab 2",
                    ),
                  ]),
                ),
              ];
            },
            body: TabBarView(
              children: [
                ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      margin: const EdgeInsets.only(bottom: 10),
                      color: Colors.green,
                      child: Text(
                        "index $index",
                      ),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      margin: const EdgeInsets.only(bottom: 10),
                      color: Colors.blue,
                      child: Text(
                        "index $index",
                      ),
                    );
                  },
                ),
              ],
            )),
      ),
    );
  }
}
