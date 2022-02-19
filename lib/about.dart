import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: const Text("About Screen", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
        ),
        body: const Center(
          child: Text("Welcome to About Screen"),
        ),
    );
  }
}
