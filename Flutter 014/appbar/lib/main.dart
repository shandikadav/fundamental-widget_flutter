import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi AppBar"),
          leading: ElevatedButton(onPressed: () {}, child: Icon(Icons.arrow_back)),
          centerTitle: true,
        ),
      ),
    );
  }
}