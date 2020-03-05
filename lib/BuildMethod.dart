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
      home: DemoBuildContext(), //Chứa toàn bo UI o man hinfh
    );
  }
}


//Stateless Widget
class DemoBuildContext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo BuildContext"),
      ),
      body: OngBa(child: ChaMe(child: Column(
        children: <Widget>[
          ConTrai(),
          ConGai(),
        ]
      ),),) ,
      
    );
  }
}

class OngBa extends StatelessWidget {
  Widget child;
  OngBa({
    this.child
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}

class ChaMe extends StatelessWidget {
  Widget child;
  ChaMe({
    this.child
  });

  String layTenConTrai() {
    return "Thanh";
  }

  String layTenConGai () {
    return "Loc";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}

class ConTrai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ChaMe chaMe = context.ancestorWidgetOfExactType(ChaMe);

    return Container(
      child: Text(chaMe.layTenConTrai(), style: TextStyle(fontSize: 30), ),
    );
  }
}

class ConGai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ChaMe chaMe = context.ancestorWidgetOfExactType(ChaMe);

    return Container(
      child: Text(chaMe.layTenConGai(), style: TextStyle(fontSize: 40),),
    );
  }
}