part of 'book_distributed_bloc.dart';

@immutable
sealed class BookDistributedEvent {}

final class BookDistributedDataRequested extends BookDistributedEvent {}

final class AddCounterPressed extends BookDistributedEvent {
  List<BookModel> bookModelList;
  final int index;

  AddCounterPressed({required this.bookModelList, required this.index});
}

final class SubtractCounterPressed extends BookDistributedEvent {
  List<BookModel> bookModelList;
  final int index;

  SubtractCounterPressed({required this.bookModelList, required this.index});
}
