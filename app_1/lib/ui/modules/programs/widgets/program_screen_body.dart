// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';

class ProgramScreenBody extends StatefulWidget {
  const ProgramScreenBody({
    Key? key,
    required this.programModelList,
  }) : super(key: key);

  final List<ProgramModel> programModelList;

  @override
  State<ProgramScreenBody> createState() => _ProgramScreenBodyState();
}

class _ProgramScreenBodyState extends State<ProgramScreenBody> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: widget.programModelList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });

                  log("selected Index is $selectedIndex");
                },
                child: Container(
                  height: 100,
                  margin: const EdgeInsets.only(bottom: 10),
                  color:
                      selectedIndex == index ? Colors.pinkAccent : Colors.green,
                  child: Text(
                    widget.programModelList[index].title,
                  ),
                ),
              );
            },
          ),
        ),

        // Expanded(
        //   child: ListView(
        //     children: [
        //       Container(
        //         height: 120,
        //         decoration: BoxDecoration(
        //           color: Colors.amber.withOpacity(0.5),
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 12,
        //       ),
        //       Container(
        //         height: 120,
        //         decoration: BoxDecoration(
        //           color: Colors.amber.withOpacity(0.5),
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 10,
        //       ),
        //       Container(
        //         height: 120,
        //         decoration: BoxDecoration(
        //           color: Colors.amber.withOpacity(0.5),
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 12,
        //       ),
        //       Container(
        //         height: 120,
        //         decoration: BoxDecoration(
        //           color: Colors.amber.withOpacity(0.5),
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 10,
        //       ),
        //       Container(
        //         height: 120,
        //         decoration: BoxDecoration(
        //           color: Colors.amber.withOpacity(0.5),
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 12,
        //       ),
        //       Container(
        //         height: 120,
        //         decoration: BoxDecoration(
        //           color: Colors.amber.withOpacity(0.5),
        //         ),
        //       ),
        //       Container(
        //         height: 120,
        //         decoration: BoxDecoration(
        //           color: Colors.amber.withOpacity(0.5),
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 12,
        //       ),
        //       Container(
        //         height: 120,
        //         decoration: BoxDecoration(
        //           color: Colors.amber.withOpacity(0.5),
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 10,
        //       ),
        //       Container(
        //         height: 120,
        //         decoration: BoxDecoration(
        //           color: Colors.amber.withOpacity(0.5),
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 12,
        //       ),
        //       Container(
        //         height: 120,
        //         decoration: BoxDecoration(
        //           color: Colors.amber.withOpacity(0.5),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),

        Container(
          height: 120,
          decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}

class ProgramModel {
  final String title;
  final String programCycle;
  final String startDate;
  final String endDate;

  ProgramModel({
    required this.title,
    required this.programCycle,
    required this.startDate,
    required this.endDate,
  });
}
