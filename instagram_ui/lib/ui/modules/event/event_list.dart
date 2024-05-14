import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_ui/configs/extensions/date_time_extension.dart';
import 'package:instagram_ui/ui/modules/event/bloc/event_bloc.dart';
import 'package:instagram_ui/ui/modules/event/event_detail.dart';
import 'package:instagram_ui/ui/modules/event/event_model.dart';

class EventListPage extends StatelessWidget {
  const EventListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EventBloc, EventState>(
      listenWhen: (previous, current) =>
          previous.eventStateEnum != current.eventStateEnum ||
          previous.error != current.error,
      listener: (context, state) {
        if (state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error!)),
          );
        }
      },
      child: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text("Event List Page",
                      style: Theme.of(context).textTheme.headlineLarge),
                  BlocBuilder<EventBloc, EventState>(
                    builder: (context, state) {
                      if (state.eventStateEnum == EventStateEnum.loading) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (state.eventModelList != null &&
                          state.eventModelList!.isNotEmpty) {
                        return Expanded(
                          child: RefreshIndicator(
                            onRefresh: () async {
                              BlocProvider.of<EventBloc>(context)
                                  .add(GetEvent());
                            },
                            child: ListView.separated(
                              itemBuilder: (context, index) {
                                return ListTile(
                                  onTap: () {
                                    context.read<EventBloc>().add(GetEventById(
                                        state.eventModelList![index].id));
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => EventDetailPage(
                                          id: state.eventModelList![index].id,
                                        ),
                                      ),
                                    );
                                  },
                                  leading: state.eventModelList![index]
                                              .imageUrl !=
                                          null
                                      ? Image.network(
                                          "${state.eventModelList![index].imageUrl}")
                                      : const Icon(Icons
                                          .photo_size_select_large_rounded),
                                  title: Text(
                                    "${index + 1} - ${state.eventModelList![index].name}",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  subtitle: Text(
                                    "Description $index - ${state.eventModelList![index].description}",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  trailing: SizedBox(
                                      width: 32,
                                      child: Text(
                                        state.eventModelList![index].date
                                            .appDateFormat(),
                                        maxLines: 1,
                                      )),
                                  isThreeLine: true,
                                  onLongPress: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                                context.read<EventBloc>().add(
                                                    DeleteEventById(state
                                                        .eventModelList![index]
                                                        .id));
                                              },
                                              child: const Padding(
                                                padding: EdgeInsets.all(32),
                                                child: Row(
                                                  children: [
                                                    Text("Delete"),
                                                    Icon(Icons.delete),
                                                  ],
                                                ),
                                              ));
                                        });
                                  },
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const Divider(),
                              itemCount: state.eventModelList!.length,
                            ),
                          ),
                        );
                      } else if (state.error != null) {
                        return Center(child: Text(state.error!));
                      }
                      return Center(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            context.read<EventBloc>().add(GetEvent());
                          },
                          icon: const Icon(Icons.refresh),
                          label: const Text("Refresh"),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 0,
            child: ElevatedButton.icon(
                onPressed: () {
                  context.read<EventBloc>().add(
                        AddEvent(
                          eventModel: EventModel(
                            name: "Demon Slayer: Kimetsu no Yaiba",
                            description:
                                "Japan has the world's highest frequency of kaiju-emergence, resulting in frequent deadly monster attacks that require constant efforts by the Japan Defense Force to suppress. Kafka Hibino has always dreamed of becoming a part of this force and fulfilling his duty of cleaning up after these creatures. However, Kafka unexpectedly undergoes a transformation that leaves him struggling to reconcile with his new",
                            date: DateTime.now(),
                            id: DateTime.now()
                                .millisecondsSinceEpoch
                                .toString(),
                          ),
                        ),
                      );
                  print("Hello");
                },
                icon: const Icon(Icons.add),
                label: const Text("Add Event")),
          ),
        ],
      ),
    );
  }
}
