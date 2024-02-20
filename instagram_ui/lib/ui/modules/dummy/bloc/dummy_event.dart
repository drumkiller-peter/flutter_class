// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'dummy_bloc.dart';

@immutable
sealed class DummyEvent  extends Equatable{
  @override
  List<Object?> get props => [];
}



class BookLoadRequested extends DummyEvent{}

class BookSelectionRequested extends DummyEvent {
  final BookModel selectedSingleBook;
  BookSelectionRequested({
    required this.selectedSingleBook,
  });

  @override
  List<Object?> get props => [selectedSingleBook];


}
