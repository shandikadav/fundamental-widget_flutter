import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Shandika",
      "Age": 20,
      "favColor": ["Red", "Blue", "Black", "Red", "Blue", "Black"],
    },
    {
      "Name": "Guido",
      "Age": 20,
      "favColor": ["Red", "Green", "Blue"],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ID Apps"),
        ),
        body: ListView(
          children: myList.map((data) {
            List myColor = data['favColor'];
            return Card(
              child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(),
                    Column(
                      children: [
                        Text("Name : ${data['Name']}"),
                        Text("Age : ${data['Age']}"),
                      ],
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: myColor.map((e){
                      return Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 8,
                        ),
                        padding: EdgeInsets.all(10),
                        color: Colors.blue,
                        child: Text(e),
                      );
                    }).toList(),
                  ),
                )
              ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
