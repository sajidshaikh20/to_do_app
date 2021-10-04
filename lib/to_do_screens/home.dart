import 'package:flutter/material.dart';
import 'package:to_do_app/to_do_screens/mycard.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  List<String> data = <String>['first ', 'second'];
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text(
          "To Do App",
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            controller: editingController,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (editingController.text.isNotEmpty) {
                      data.add(editingController.text);
                      editingController.clear();
                    }
                  });
                },
                child: Text("save")),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Mycard(
                    todo: data[data.length - 1 - index],
                  );
                }),
          ),
          // Align(
          //     alignment: Alignment.center,
          //     child: ElevatedButton(onPressed: () {}, child: Text("change")))
        ],
      ),
    );
  }
}
// Card(
      
//       elevation: 3,
//       child: Padding(padding: EdgeInsets.all(8), child: Text(todo)),
//     )