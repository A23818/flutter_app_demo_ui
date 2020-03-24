import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';


void main() => runApp(MyApp());

//Demo1: su dung Inherited widget chia se data
//Demo2: Inhertirted ben trong mot stateful widget

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
        ),
        body: Scaffold(
          body: DemoInheritedWidget(
            child: MyContainer(
              child: Counter(),
            ),
          ),
        )
      ),
    );
  }
}
//demo2

class MyContainer extends StatefulWidget {

  Widget child;

  MyContainer({this.child});

  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {

  int data = 0;

  increment(){
    setState(() {
      data++;
    });
  }




  @override
  Widget build(BuildContext context) {
    return DemoInheritedWidget(
      state: this,
      child: widget.child,
    );
  }
}


class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter>
{


  @override
  Widget build(BuildContext context) {

    DemoInheritedWidget demo = context.inheritFromWidgetOfExactType(DemoInheritedWidget);



    return Center(
      child: Container(
        child: Column (children: <Widget>[
          Text(demo.state.data.toString(), style: TextStyle(fontSize: 40)),
          RaisedButton(onPressed: () {
            demo.state.increment();
          },
            child: Text("Click"),
          )
        ],)
      ),
    );
  }
}

class DemoInheritedWidget extends InheritedWidget {
 
  Widget child;

  _MyContainerState state;


  DemoInheritedWidget({this.state, this.child});

  @override
  bool updateShouldNotify (DemoInheritedWidget old) {
    return true;
  }
}
//demo1
class OngBa extends StatelessWidget {

  // int count = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChaMe(),
    );
  }
}

// // demo1
// class DemoInheritedWidget extends InheritedWidget {
 
//   int count = 1000;

//   DemoInheritedWidget({
//     Widget child
//   }) : super(child: child);

//   @override
//   bool updateShouldNotify (DemoInheritedWidget old) {
//     return true;
//   }
// }




class ChaMe extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
      child: ConGai(),
    );
  }
}

class ConGai extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {

    DemoInheritedWidget demo = context.inheritFromWidgetOfExactType(DemoInheritedWidget);
    return Center(
      child: Container(
        // child: Text(demo.count.toString(), style: TextStyle(fontSize: 30),),
      )
    );
  }
}

//Demo2
