import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Color> myColor = [Colors.red, Colors.green, Colors.blue, Colors.amber];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView.builder(
        itemCount: myColor.length,
        itemBuilder: ((context, index) {
          return Container(
              width: 300,
              height: 300,
              color:myColor[index],
            );
        }),
        ),
      ),
    );
  }
}