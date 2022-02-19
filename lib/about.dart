import 'package:flutter/material.dart';

class About extends StatelessWidget {
  final String title;
  About(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: const Text("About Screen", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
        ),
        body: Center(
          child: Text(title),
        ),
    );
  }
}
