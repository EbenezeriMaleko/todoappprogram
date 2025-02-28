import 'package:flutter/material.dart';
import 'package:todoappbasic/widget/task_card.dart';

class ToDoLists extends StatefulWidget {
  const ToDoLists({super.key});

  @override
  State<ToDoLists> createState() => _ToDoListsState();
}

class _ToDoListsState extends State<ToDoLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "To Do App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow[600],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ToDoList(task: "Hello", isCompleted: false);
            },
          ))
        ],
      ),
    );
  }
}
