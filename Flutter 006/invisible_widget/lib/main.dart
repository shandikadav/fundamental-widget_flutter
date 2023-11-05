import 'package:flutter/material.dart';

main(){
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
          title: Text("Column"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 30,
              color: Colors.green,
            ),
            Container(
              width: 200,
              height: 30,
              color: Colors.red,
            ),
            Container(
              width: 150,
              height: 30,
              color: Colors.blue,
            ),
            Container(
              width: 250,
              height: 30,
              color: Colors.yellow,
            ),
            Container(
              child: Text(
                "Halo masbro",
                style: TextStyle(
                  fontSize: 20
                ),
                )
                ),
          ],
        )
      ),
    );
  }
}