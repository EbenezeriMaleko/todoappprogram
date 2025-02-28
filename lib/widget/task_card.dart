import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  final String task;
  final bool isCompleted;

  const ToDoList({super.key, required this.task, required this.isCompleted});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile() ,
    );
  }
}
