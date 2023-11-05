import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
        ),
        body: Center(
          child: Text(
            "HALOO",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              backgroundColor: Colors.amber,
              fontSize: 30,
            ),
            ),
          ),
      ),
    );
  }
}
