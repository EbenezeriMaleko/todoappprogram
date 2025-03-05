import 'package:flutter/material.dart';
import 'package:todoappbasic/widget/task_card.dart';

class TodoLists extends StatefulWidget {
  const TodoLists({super.key});

  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoLists> {
  final TextEditingController _taskController = TextEditingController();
  List<Map<String, dynamic>> tasks = [];

  void _addTask(String task) {
    setState(() {
      tasks.add({'task': task, 'isCompleted': false});
    });
  }

  void _deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  void _toogleTaskCompletion(int index, bool? isCompleted) {
    setState(() {
      tasks[index]['isCompleted'] = isCompleted;
    });
  }

  @override
  void dispose() {
    _taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              const Text('To-Do List', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.yellow[700],
          elevation: 0,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 30),
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                      key: Key(tasks[index]['task']),
                      onDismissed: (direction) => _deleteTask(index),
                      child: TaskCard(
                          task: tasks[index]['task'],
                          isCompleted: tasks[index]['isCompleted'],
                          onCheckboxChanged: (value) {
                            _toogleTaskCompletion(index, value);
                          },
                          onDelete: () {
                            _deleteTask(index);
                          }));
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                String newTask = '';
                return AlertDialog(
                  title: Text('Add New Task'),
                  content: TextField(
                    onChanged: (value) {
                      newTask = value;
                    },
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Cancel')),
                    TextButton(
                        onPressed: () {
                          if (newTask.isNotEmpty) {
                            _addTask(newTask);
                          }
                          Navigator.of(context).pop();
                        },
                        child: Text('Add'))
                  ],
                );
              },
            );
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.yellow[600],
        ));
  }
}
