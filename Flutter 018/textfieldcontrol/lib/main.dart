import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController myController = TextEditingController();

  String textValues = "OUTPUT";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Textfield Control"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: myController,
                  onChanged: (value) {
                    print("BERUBAH");
                  },
                  onSubmitted: (value) {
                    setState(() {
                      textValues = value;
                    });
                    print(value);
                  },
                ),
                Text(textValues)
              ],
            ),
          ),
        ),
      ),
    );
  }
}