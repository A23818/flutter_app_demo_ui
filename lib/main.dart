import 'package:flutter/material.dart';
import 'DemoDidUpdateWidget.dart';
import 'DemoDidChangeDependencies.dart';

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
      home: Scaffold(
        body: Demo1(),
      ), //Chứa toàn bo UI o man hinfh
    );
  }
}
class Demo1 extends StatefulWidget {

  Demo1({Key key, this.title}) : super(key:key);

  final String title;

  @override
  _Demo1State createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {

  int _counter = 0;

  @override
  void initState() {
    super.initState();
    print("initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  void didUpdateWidget (Demo1 oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  void _incrementCounter() {
    //demo dispose
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(builder: (context) => Demo2()),
    );
    // setState(() {
    //   _counter++;
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$_counter',
            style: TextStyle(fontSize: 20),
          ),
          RaisedButton(
            child: Text("Increment"),
            onPressed: _incrementCounter,
          )
      ],)
    );
  }
}

