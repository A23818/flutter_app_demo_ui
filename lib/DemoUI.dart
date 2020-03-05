import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DNT Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return Container();
      return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: "Example@gmail.com",
                  labelText: "Email",
                ),
              ),
              SizedBox (
                height: 15,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: "Example@gmail.com",
                  labelText: "Password",
                ),
              ),
              SizedBox (
                height: 15,
              ),
              RaisedButton(
                color: Colors.blue,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        )

      );
  }
}