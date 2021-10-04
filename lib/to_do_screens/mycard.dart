import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  final String todo;
  const Mycard({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(padding: EdgeInsets.all(8), child: Text(todo)),
    );
  }
}
