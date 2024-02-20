import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_ui/ui/modules/add_books_distributed/models/book_model.dart';
import 'package:meta/meta.dart';

part 'dummy_event.dart';
part 'dummy_state.dart';

class DummyBloc extends Bloc<DummyEvent, DummyState> {
  DummyBloc() : super(DummyInitial()) {
    on<BookLoadRequested>((event, emit) async {
      emit(DummyLoadInProgress());
      await Future.delayed(const Duration(seconds: 1));
      emit(DummyBooksLoaded(books: books));
    });

    on<BookSelectionRequested>((event, emit) {
      emit(DummyInitial());
      selectedBooksList.add(event.selectedSingleBook);
      emit(
        DummyBooksLoaded(
          books: books,
          selectedBooks: selectedBooksList,
        ),
      );
    });
  }

  List<BookModel> selectedBooksList = [];

  List<BookModel> books = [
    BookModel(title: "Some title", id: 1, code: "cc", quantity: 10),
    BookModel(title: "Some title1", id: 2, code: "r", quantity: 10),
    BookModel(title: "Some title22", id: 3, code: "cc", quantity: 10),
    BookModel(title: "Some title993423", id: 4, code: "cc", quantity: 10),
  ];
}
