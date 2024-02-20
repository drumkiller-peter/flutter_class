import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_ui/configs/router/app_router.dart';
import 'package:instagram_ui/ui/modules/dummy/bloc/dummy_bloc.dart';
import 'package:instagram_ui/ui/modules/dummy/dummy2.dart';

class Dummy1 extends StatefulWidget {
  const Dummy1({super.key});

  @override
  State<Dummy1> createState() => _Dummy1State();
}

class _Dummy1State extends State<Dummy1> {
  // List<BookModel> books = [
  //   BookModel(title: "Some title", id: 1, code: "cc", quantity: 10),
  //   BookModel(title: "Some title1", id: 2, code: "r", quantity: 10),
  //   BookModel(title: "Some title22", id: 3, code: "cc", quantity: 10),
  //   BookModel(title: "Some title993423", id: 4, code: "cc", quantity: 10),
  // ];

  // List<BookModel> selectedBooks = [];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DummyBloc()..add(BookLoadRequested()),
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Dummy 1"),
          ),
          body: BlocBuilder<DummyBloc, DummyState>(
            builder: (context, state) {
              return state is DummyLoadInProgress
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : state is DummyBooksLoaded
                      ? Column(
                          children: [
                            Expanded(
                              child: ListView.separated(
                                itemCount: state.books.length,
                                itemBuilder: (c, i) {
                                  var book = state.books[i];
                                  return CheckboxListTile(
                                    title: Text(book.title),
                                    value:
                                        state.selectedBooks?.contains(book) ??
                                            false,
                                    onChanged: (v) {
                                      // setState(() {
                                      //   if (selectedBooks.contains(book)) {
                                      //     selectedBooks.remove(book);
                                      //   } else {
                                      //     selectedBooks.add(book);
                                      //   }
                                      // });

                                      log(v.toString());
                                      log(state.selectedBooks.toString());

                                      context.read<DummyBloc>().add(
                                          BookSelectionRequested(
                                              selectedSingleBook: book));
                                    },
                                  );
                                },
                                separatorBuilder: (c, i) {
                                  return const SizedBox(
                                    height: 10,
                                  );
                                },
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  // context.read<HamroBloc>().add(Event(selectedBooks: selectedBooks));

                                  context.go(
                                    "${AppRouter.dashboard}/${AppRouter.dummy1}/${AppRouter.dummy2}",
                                    extra: [
                                      SomeDummyModel(
                                        id: 2,
                                        name: "HELLO WORLD",
                                      ),
                                      true,
                                    ],
                                  );
                                },
                                child: const Text("Continue")),
                          ],
                        )
                      : const SizedBox();
            },
          )),
    );
  }
}
