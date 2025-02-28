import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  final String task;
  final bool isCompleted;

  const ToDoList({super.key, required this.task, required this.isCompleted});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListTile(
          leading: Checkbox(
            value: isCompleted, 
            onChanged: (value){
              //functions
            },
            activeColor: Colors.yellow,
          ),
        
          title: Text(
            task,
            style: TextStyle(
              fontSize: 14,
              decoration: isCompleted ? TextDecoration.lineThrough : null,
              color: isCompleted ? Colors.grey : null
            ),
          ),
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: Colors.red,)),
        ),
      ) 
    );
  }
}
   