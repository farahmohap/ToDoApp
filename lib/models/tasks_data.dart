import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:to_do_app/models/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    // Task(name: 'go shopping'),
    // Task(name: 'buy a gift'),
    // Task(name: 'repair the car'),
  ];
  // RunAnimation() {

  //   if (Task() == true) {
  //     return Lottie.asset('assetss/animations/aa.json');
  //   }
  //   return null;
  // }

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
