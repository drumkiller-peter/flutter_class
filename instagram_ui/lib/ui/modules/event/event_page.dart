import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_ui/ui/modules/event/event_model.dart';
import 'package:instagram_ui/ui/modules/event/event_repo.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final name = TextEditingController();
  final description = TextEditingController();
  final dateController = TextEditingController();
  DateTime? eventDate;

  bool isLoading = false;

  void _snackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  Future<void> _saveEvent() async {
    try {
      isLoading = true;
      if (name.text.isEmpty || description.text.isEmpty || eventDate == null) {
        _snackbar("All fields are required");
        return;
      }
      EventRepository eventRepository = context.read<EventRepository>();
      EventModel eventModel = EventModel(
        name: name.text,
        description: description.text,
        date: eventDate!,
        id: DateTime.now().millisecondsSinceEpoch.toString(),
      );

      await eventRepository.addEvent(eventModel);

      _snackbar("Event added successfully");

      isLoading = false;
    } catch (e) {
      isLoading = false;
      print(e);
      _snackbar(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Add Event",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(labelText: "Name"),
                controller: name,
              ),
              TextField(
                decoration: const InputDecoration(labelText: "Description"),
                controller: description,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Date",
                  suffixIcon: ElevatedButton.icon(
                    onPressed: () async {
                      var datePicked = await showDatePicker(
                        context: context,
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now().add(const Duration(days: 365)),
                      );
                      if (datePicked != null) {
                        setState(() {
                          eventDate = datePicked;
                          dateController.text = eventDate.toString();
                        });
                      }
                    },
                    icon: const Icon(Icons.calendar_month),
                    label: const Text("Pick date"),
                  ),
                ),
                controller: dateController,
              ),
              const SizedBox(height: 20),
              FilledButton(
                style: FilledButton.styleFrom(
                    fixedSize: const Size(double.infinity, 50)),
                onPressed: _saveEvent,
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
