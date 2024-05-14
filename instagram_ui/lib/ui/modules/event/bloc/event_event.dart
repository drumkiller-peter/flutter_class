part of 'event_bloc.dart';

abstract class EventEvent {}

class AddEvent extends EventEvent {
  final EventModel eventModel;
  AddEvent({required this.eventModel});
}

class GetEvent extends EventEvent {}

class GetEventById extends EventEvent {
  final String id;

  GetEventById(this.id);
}
class DeleteEventById extends EventEvent {
  final String id;

  DeleteEventById(this.id);
}
