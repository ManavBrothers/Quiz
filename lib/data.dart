import 'dart:convert';

import 'package:flutter/material.dart';

class ProData extends StatefulWidget {
  const ProData({Key? key}) : super(key: key);

  @override
  _ProDataState createState() => _ProDataState();
}

class _ProDataState extends State<ProData> {
  
  getUserData() async{
     
    var response = await Uri.http('jsonplaceholder.typicode.com', 'users');
    var jsonData = jsonDecode(response.authority);

    List<User> users = [];

    for (var u in jsonData){
      User user = User(u['name'],u['email'], u['userName']);
      users.add(user);
    }
    print(users.length);
    return users;
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: InkWell(
          onTap: (
            getUserData()
          ),
          child: Text('Click me Hard More, break the screen and back to me '),
        ),),
      ),
    );
  }
}
class User {

  final String name, email, userName;
  User(this.name, this.email, this.userName);

}