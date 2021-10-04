import 'package:flutter/material.dart';

class Mycard extends StatefulWidget {
  const Mycard({
    Key? key,
    required this.todo,
  }) : super(key: key);
  final String todo;

  @override
  _MycardState createState() => _MycardState();
}

class _MycardState extends State<Mycard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        setState(() {});
      },
      child: Card(
        elevation: 3,
        child: Padding(padding: EdgeInsets.all(8), child: Text(widget.todo)),
      ),
    );
  }
}
