import 'package:basic_dart/about.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  final controllerTitle = TextEditingController();
  String title = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            controller: controllerTitle,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                title = controllerTitle.text;
              });
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return About(title);
              }));
            },
            child: const Text("Go to About Screen"),

          ),
        ],
      ),
    );
  }
}
