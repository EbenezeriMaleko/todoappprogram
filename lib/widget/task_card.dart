import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String task;
  final bool isCompleted;
  final Function(bool?) onCheckboxChanged;
  final Function() onDelete;

  const TaskCard({
    super.key,
    required this.task,
    required this.isCompleted,
    required this.onCheckboxChanged,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListTile(
          leading: Checkbox(
            value: isCompleted,
            onChanged: onCheckboxChanged,
            activeColor: Colors.yellow[500],
          ),
          title: Text(
            task,
            style: TextStyle(
              fontSize: 16,
              decoration: isCompleted ? TextDecoration.lineThrough : null,
              color: isCompleted ? Colors.grey : Colors.black,
            ),
          ),
          trailing: IconButton(
            icon: Icon(Icons.delete, color: Colors.red[600]),
            onPressed: onDelete,
          ),
        ),
      ),
    );
  }
}
