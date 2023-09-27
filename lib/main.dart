import 'package:flutter/material.dart';
import 'package:to_do_app/models/tasks_data.dart';
import 'package:to_do_app/views/Item_Content_View.dart';
import 'package:to_do_app/views/home_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TaskData(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: ItemContentView()));
  }
}
