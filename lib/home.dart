import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}


class _HomeState extends State<Home> {

  final controllerMessage = TextEditingController();
  String message = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            controller: controllerMessage,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                message = controllerMessage.text;
              });
            },
            child: const Text("Show message"),
          ),
          Center(
            child: Text(
              message,
              textDirection: TextDirection.ltr,
            ),
          ),
        ],
      ),
    );
  }
}
