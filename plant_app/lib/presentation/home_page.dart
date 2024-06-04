import 'package:flutter/material.dart';
import 'package:plant_app/data/repository/home_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          HomeRepository().addPost();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Consuming REST example"),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: HomeRepository().getHomeScreenData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (c, i) {
                          return ListTile(
                            title: Text(
                                "${snapshot.data![i].id} ${snapshot.data![i].title} "),
                            subtitle: Text(
                                "${snapshot.data![i].body}  ${snapshot.data![i].userId}"),
                          );
                        }),
                  );
                } else if (snapshot.hasError) {
                  return Text(
                    snapshot.error.toString(),
                    style: const TextStyle(color: Colors.red),
                  );
                }
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else {
                return const Text("No data");
              }
              return const SizedBox();
            },
          )
        ],
      ),
    );
  }
}
