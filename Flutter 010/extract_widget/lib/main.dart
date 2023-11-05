import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Extract Widget"),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ChatItem(
              imgurl:
                  "https://plus.unsplash.com/premium_photo-1661775639463-b0a59bb479e7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            );
          },
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String? imgurl;
  final String? title;
  final String? subtitle;

  ChatItem({
    this.imgurl,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgurl!),
      ),
      title: Text(title!),
      subtitle: Text(subtitle!, maxLines: 1, overflow: TextOverflow.ellipsis,),
      trailing: Text("10:00 PM"),
    );
  }
}
