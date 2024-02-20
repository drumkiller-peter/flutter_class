import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_ui/ui/modules/add_books_distributed/models/book_model.dart';
import 'package:meta/meta.dart';

part 'book_distributed_event.dart';
part 'book_distributed_state.dart';

class BookDistributedBloc
    extends Bloc<BookDistributedEvent, BookDistributedState> {
  BookDistributedBloc() : super(BookDistributedInitial()) {
    on<BookDistributedDataRequested>((event, emit) async {
      emit(BookDistributedLoadInProgress());
      await Future.delayed(const Duration(seconds: 2));
      var bookList = List.generate(
        10,
        (index) => BookModel(
            title: "Book Title $index",
            code: "code_$index",
            quantity: 0,
            id: 10),
      );
      emit(BookDistributedSuccess(
        bookModelList: bookList,
        total: calculateTotal(bookList),
      ));
    });

    on<AddCounterPressed>((event, emit) {
      emit(BookDistributedInitial());
      try {
        var temp = event.bookModelList;
        var item = temp[event.index];
        item = item.copyWith(
          quantity: item.quantity + 1,
        );
        temp[event.index] = item;

        emit(BookDistributedSuccess(
          bookModelList: temp,
          total: calculateTotal(temp),
        ));
      } catch (e) {
        log(e.toString());
      }
      // var temp = event.bookModelList;
      // event.bookModelList =
      //     event.bookModelList.copyWith(quantity: temp.quantity + 1);
      // emit(
      //   BookDistributedSuccess(
      //     bookModelList: [event.bookModelList],
      //   ),
      // );
    });

    on<SubtractCounterPressed>((event, emit) {
      emit(BookDistributedInitial());
      try {
        var temp = event.bookModelList;
        var item = temp[event.index];
        if (item.quantity > 0) {
          item = item.copyWith(
            quantity: item.quantity - 1,
          );
          temp[event.index] = item;
        }

        emit(BookDistributedSuccess(
          bookModelList: temp,
          total: calculateTotal(temp),
        ));
      } catch (e) {
        log(e.toString());
      }
      // var temp = event.bookModelList;
      // event.bookModelList =
      //     event.bookModelList.copyWith(quantity: temp.quantity + 1);
      // emit(
      //   BookDistributedSuccess(
      //     bookModelList: [event.bookModelList],
      //   ),
      // );
    });
  }

  // int afnoVar = 0;
  int calculateTotal(List<BookModel> listItem) {
    var total = 0;
    for (var element in listItem) {
      total += element.quantity;
    }
    return total;
  }
}
