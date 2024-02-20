part of 'dummy_bloc.dart';

@immutable
sealed class DummyState extends Equatable{
  @override
  List<Object?> get props => [];
}

final class DummyInitial extends DummyState {}


final class DummyLoadInProgress extends DummyState {}

final class DummyBooksLoaded extends DummyState{
  final List<BookModel> books;
  final List<BookModel>? selectedBooks;

  DummyBooksLoaded({required this.books, this.selectedBooks});

  @override
  List<Object?> get props => [books, selectedBooks];
}


final class DummyBooksSelected extends DummyState{
  final List<BookModel> selectedBooks;

  DummyBooksSelected({required this.selectedBooks});

  @override
  List<Object?> get props => [selectedBooks];
}