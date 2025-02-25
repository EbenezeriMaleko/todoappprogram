import 'package:flutter/material.dart';
import 'package:todoappbasic/screens/to_do_list%20screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ToDoLists()
    );
  }
}
