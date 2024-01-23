import 'package:app_1/ui/modules/programs/widgets/program_screen_body.dart';
import 'package:flutter/material.dart';

class ProgramScreen extends StatelessWidget {
  const ProgramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Programs"),
      ),
      body: ProgramScreenBody(
        programModelList: [
          ProgramModel(
              title: "Bass Memorial Academy",
              programCycle: "Einter",
              startDate: "sdsdsd",
              endDate: "sdsdsd"),
          ProgramModel(
              title: "Bass Memorial Academy",
              programCycle: "Einter",
              startDate: "sdsdsd",
              endDate: "sdsdsd"),
          ProgramModel(
              title: "Bass Memorial Academy",
              programCycle: "Einter",
              startDate: "sdsdsd",
              endDate: "sdsdsd"),
          ProgramModel(
              title: "Bass Memorial Academy",
              programCycle: "Einter",
              startDate: "sdsdsd",
              endDate: "sdsdsd"),
        ],
      ),
    );
  }
}
