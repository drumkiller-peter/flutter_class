// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'event_bloc.dart';

enum EventStateEnum { initial, loading, success, failure }

class EventState extends Equatable {
  final EventStateEnum? eventStateEnum;
  final List<EventModel>? eventModelList;
  final EventModel? eventModel;

  final String? error;
  const EventState({
    this.eventStateEnum,
    this.eventModelList,
    this.eventModel,
    this.error,
  });

  @override
  List<Object?> get props => [eventStateEnum, eventModelList, eventModel, error];

  EventState copyWith({
    EventStateEnum? eventStateEnum,
    List<EventModel>? eventModelList,
    EventModel? eventModel,
    String? error,
  }) {
    return EventState(
      eventStateEnum: eventStateEnum ?? this.eventStateEnum,
      eventModelList: eventModelList ?? this.eventModelList,
      eventModel: eventModel ?? this.eventModel,
      error: error ?? this.error,
    );
  }
}
