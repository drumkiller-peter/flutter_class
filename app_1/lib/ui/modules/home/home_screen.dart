import 'package:app_1/ui/modules/home/widgets/top_component.dart';
import 'package:app_1/ui/modules/notifcations/notification_screen.dart';
import 'package:app_1/ui/modules/profile/screen/profile_page.dart';
import 'package:app_1/ui/modules/programs/screens/program_screen.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      appBar: AppBar(
        title: const Text(
          "This is title",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: Colors.purple,
            fontFamily: "DummyName",
          ),
        ),
        centerTitle: false,
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            print("This is something");
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NotificationScreen(),
                ),
              );
            },
            icon: const Icon(Icons.notification_add),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProgramScreen(),
                ),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          // padding: const EdgeInsets.all(16),
          // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          padding: const EdgeInsets.only(
            top: 40,
            left: 16,
            right: 2,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontFamily: "DummyName",
                      ),
                      key: GlobalObjectKey("value"),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                " Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: "DummyName",
                ),
              ),
              const Icon(Icons.next_plan),
              const TopComponent(),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.red,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("This is button"),
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                },
                splashColor: Colors.yellow,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: 100,
                  width: 200,
                  child: const Center(
                    child: Text(
                      "click me For Route",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: "DummyName",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(16),
                ),
                height: 100,
                width: 200,
                child: const Center(
                  child: Text(
                    "click me",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: "DummyName",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
