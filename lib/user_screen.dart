import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;
  UserModel({
    required this.id,
    required this.phone,
    required this.name,
  });
}

class UserScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(id: 1, name: 'Amr sabry', phone: '+201023270384'),
    UserModel(id: 2, name: 'khaled mohamed', phone: '+201023270384'),
    UserModel(id: 3, name: 'mohamed gamal', phone: '+201023270384'),
    UserModel(id: 4, name: 'osama gamal', phone: '+201023270384'),
    UserModel(id: 5, name: 'mostafa gomaa', phone: '+201023270384'),
    UserModel(id: 6, name: 'fares ayman', phone: '+201023270384'),
    UserModel(id: 7, name: 'Ahmed sabry', phone: '+201023270384'),
    UserModel(id: 8, name: 'youssef moataz', phone: '+201023270384'),
    UserModel(id: 9, name: 'masoad hamed', phone: '+201023270384'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('users',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => BuildUserItem(users[index]),
            separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20.0),
                  child: Container(
                    height: 1.0,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),
                ),
            itemCount: users.length));
  }

  Widget BuildUserItem(UserModel users) => Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            CircleAvatar(
                radius: 25,
                backgroundColor: Colors.teal,
                child: Text(
                  '${users.id}',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
            SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${users.name}',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                Text(
                  '${users.phone}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[300]),
                ),
              ],
            ),
          ],
        ),
      );
}
