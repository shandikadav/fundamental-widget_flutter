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
          title: Text("List Tile"),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("Shandika David"),
              subtitle: Text("Elemao pisan kang"),
              leading: CircleAvatar(),
              trailing: Text("17:00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Shandika David"),
              subtitle: Text("Elemao pisan kang"),
              leading: CircleAvatar(),
              trailing: Text("17:00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Shandika David"),
              subtitle: Text("Elemao pisan kang"),
              leading: CircleAvatar(),
              trailing: Text("17:00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Shandika David"),
              subtitle: Text("Elemao pisan kang"),
              leading: CircleAvatar(),
              trailing: Text("17:00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
