import 'package:flutter/material.dart';
import 'package:todoappbasic/screens/to_do_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:TodoLists()
    );
  }
}
