import 'package:flutter/material.dart';
import 'package:fika_app/models/todo.dart';

class NotificationDetails extends StatelessWidget {
  final Todo todo;
  const NotificationDetails({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(todo.title!, style: TextStyle(fontSize: 20)),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          todo.description!,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
