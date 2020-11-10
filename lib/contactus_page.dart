import 'package:flutter/material.dart';

class Contactus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contact Us"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text("Admin"),
                  Text("Name: Chinmaya"),
                  Text("Phone Number: 9234567897"),
                  Text("Email: chinmaya988@gmail.com"),
                ],
              ),
              Column(children: [
                Text("Assistant"),
                Text("Name: XYZ"),
                Text("Phone Number: 345678923"),
                Text("Email: xyz@gmail.com")
              ]),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
            ],
          ),
        ));
  }
}
