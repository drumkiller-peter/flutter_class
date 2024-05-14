// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_ui/configs/extensions/date_time_extension.dart';
import 'package:instagram_ui/ui/modules/event/bloc/event_bloc.dart';

class EventDetailPage extends StatelessWidget {
  const EventDetailPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Event Detail Page",
            style: Theme.of(context).textTheme.headlineLarge),
        BlocBuilder<EventBloc, EventState>(
          builder: (context, state) {
            if (state.eventStateEnum == EventStateEnum.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.eventModel != null) {
              // return ListTile(
              //   onTap: () {},
              //   title: Text("Event - ${state.eventModel?.name}"),
              //   subtitle:
              //       Text("Description - ${state.eventModel?.description}"),
              //   trailing: Text("${state.eventModel?.date}"),
              // );
              return Column(
                children: [
                  Text("Event - ${state.eventModel?.name}"),
                  Text("Description - ${state.eventModel?.description}"),
                  Text("${state.eventModel?.date.appDateFormat()}"),
                  if ("${state.eventModel?.imageUrl}" != "null" ||
                      state.eventModel?.imageUrl != null)
                    Image.network("${state.eventModel?.imageUrl}"),
                ],
              );
            } else if (state.error != null) {
              return Center(child: Text(state.error!));
            }
            return const SizedBox();
          },
        )
      ],
    );
  }
}
