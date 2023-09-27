import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/tasks_data.dart';

class TaskBottmSheet extends StatelessWidget {
  final Function addTaskCallback;

  TaskBottmSheet(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(children: [
        const Text(
          "ADD TASK",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple),
        ),
        TextField(
          cursorHeight: 20,
          selectionWidthStyle: BoxWidthStyle.max,
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (newText) {
            newTaskTitle = newText;
          },
        ),
       const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: () {
            Provider.of<TaskData>(context, listen: false)
                .addTask(newTaskTitle!);
            Navigator.pop(context);
          },
          child:  Text("ADD"),
          style: TextButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.purple),
        )
      ]),
    );
  }
}
