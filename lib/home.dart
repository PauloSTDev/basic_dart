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
  final controllerMessage = TextEditingController();
  String message = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return About("From Home Screen to About Screen!");
              }));
            },
            child: const Text("Go to About Screen"),
          ),
        ],
      ),
    );
  }
}
