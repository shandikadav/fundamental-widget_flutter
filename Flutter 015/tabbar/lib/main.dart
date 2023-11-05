import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar"),
            bottom: TabBar(
              indicator: BoxDecoration(
                color: Colors.red,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black
                  )
                )
              ),
              tabs: [
                Tab(text: "Tab 1",),
                Tab(text: "Tab 2",),
                Tab(text: "Tab 3",),
              ]),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Tab 1 nih"),
              ),
              Center(
                child: Text("Tab 2 nih"),
              ),
              Center(
                child: Text("Tab 3 nih"),
              ),
          ]),
        ),
      ),
    );
  }
}