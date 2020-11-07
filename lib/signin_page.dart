import 'package:flutter/material.dart';
import 'package:routes/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text('Forgot Password'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: FlatButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () {},
                    )),
                Center(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Text('Does not have account?'),
                        FlatButton(
                            textColor: Colors.blue,
                            child: Text(
                              'Sign up',
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(Routes.signUpRoute);
                            })
                      ],
                    ),
                  ),
                ),
                Container(
                  child: FlatButton(
                    child: Text("ContactUs"),
                    onPressed: () {
                      Navigator.of(context).pushNamed(Routes.contactUs);
                    },
                  ),
                )
              ],
            )));
  }
}
