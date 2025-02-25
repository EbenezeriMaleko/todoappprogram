import 'package:flutter/material.dart';

class ToDoLists extends StatefulWidget {

  const ToDoLists({super.key});

  @override
  State<ToDoLists> createState() => _ToDoListsState();
}

class _ToDoListsState extends State<ToDoLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To Do App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          ),
        centerTitle: true,
        backgroundColor: Colors.yellow[600],
      ),
      body: Center(
        child: Text(
          "Welcome", 
        style: TextStyle(
          color: Colors.red
        ),),
      ),
    );
  }
}