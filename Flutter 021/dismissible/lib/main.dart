import 'package:flutter/material.dart';
import 'package:faker/faker.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(15),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Dismissible(
            onDismissed: (direction) {
              print(direction);
            },
            confirmDismiss: (direction) {
              return showDialog(
                context: context, 
                builder: (context){
                  return AlertDialog(
                    title: Text("CONFIRM"),
                    content: Text("Apakah kamu yakin ingin menghapus data ini?"),
                    actions: [
                      TextButton(onPressed: (){
                        print("Tidak");
                        Navigator.of(context).pop();
                      }, child: Text("Tidak")),
                      TextButton(onPressed: (){
                        print("Iya");
                        Navigator.of(context).pop(true);
                      }, child: Text("Iya")),
                    ],
                  );
                });
            },
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete, size: 30,),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 15),
            ),
            key: Key(index.toString()),
            child: ListTile(
              leading: CircleAvatar(
                child: Center(
                  child: Text("${index + 1}"),
                ),
              ),
              title: Text(faker.person.name()),
              subtitle: Text(
                faker.lorem.sentence(), 
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                ),
            ),
          );
      }),
    );
  }
}