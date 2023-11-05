import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextField"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
            showCursor: true,
            cursorColor: Colors.red,
            // cursorWidth: 8,

            // textAlign: TextAlign.center,

            decoration: InputDecoration(
              icon: Icon(Icons.person_2, size: 15,),
              hintText: "Silahkan masukkan password kamu",
              labelText: "Password",
            ),
            
            ),
          ),
        ),
      ),
    );
  }
}