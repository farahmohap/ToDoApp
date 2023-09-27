import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/tasks_data.dart';
import 'TaskTile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              tasktitle: taskData.tasks[index].name,
             
              checkboxChange: (newValue) {
                taskData.updateTask(taskData.tasks[index]);
                

              },
              listTileDelete: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
