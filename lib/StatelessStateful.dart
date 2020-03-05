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
      home: HomePage(), //Chứa toàn bo UI o man hinfh
    );
  }
}


//Stateless Widget
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Widget"),
      ),
      body: Center(
        child: Container(
          // child: Text("Home Page"),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Text("Home Page"),
              MyStateFullWidget(),
            ]
          ),
        
        ),
      )
     
    );
  }
}

class MyStateFullWidget extends StatefulWidget {
  @override
  _MyStateFullWidgetState createState() => _MyStateFullWidgetState();
}

class _MyStateFullWidgetState extends State<MyStateFullWidget>
{ 
  int _count = 0;

  @override
  Widget build(BuildContext context){
    print("rebuild");
    return Container(
      child: Column(
        children: <Widget>[
          Text("$_count", style: TextStyle(fontSize: 40),),
          RaisedButton(
            onPressed: () {
              // click
              setState(() {
                _count++;
              });
            },
            child: Text("Click Me", style: TextStyle(fontSize: 20),),
          ),
        ],
        ),
    );
  }
}