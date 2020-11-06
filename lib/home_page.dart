import 'package:flutter/material.dart';
import 'package:routes/routes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              "Welcome",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            Image.network(
              'https://picsum.photos/250?image=9',
            ),
            FlatButton(
                color: Colors.blue,
                child: Text("Login"),
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.signInRoute);
                })
          ]),
        ));
  }
}
