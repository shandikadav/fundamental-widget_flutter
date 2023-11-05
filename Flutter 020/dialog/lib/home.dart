import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
String hasil = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: Text(hasil,
        style: TextStyle(
          fontSize: 20
        ),),
      ),
      
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("telah di klik");
        showDialog(context: context, builder: (context) {
          return AlertDialog(
            title: Text("CONFIRM"),
            content: Text("Apakah kamu yakin ingin menghapus ini?"),
            actions: [
              TextButton(
                onPressed: (){
                  print("Tidak");
                  setState(() {
                    hasil = "Tidak";
                  });
                  Navigator.of(context).pop(false);
                }, 
                child: Text("Tidak")
                ),
                TextButton(
                onPressed: (){
                   print("Iya");
                   setState(() {
                     hasil = "Iya";
                   });
                  Navigator.of(context).pop(true);
                }, 
                child: Text("Iya")
                ),
            ],
          );
        }
        ).then((value) => print(value));
      },
      child: Icon(Icons.delete),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}