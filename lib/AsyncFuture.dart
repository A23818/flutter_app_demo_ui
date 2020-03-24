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
          body: FutureWidget(),
        )
      ),
    );
  }
}

class FutureWidget extends StatefulWidget {
  @override
  _FutureWidgetState createState() => _FutureWidgetState();
}

class _FutureWidgetState extends State<FutureWidget> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: ()  async {
                // asyncMethod();

                //C1:
                // var number = await delayNumber();

                // print(number);

                // print("123");

                //C2:
                // getAge().then((value) => {
                //   print(value);
                // });
            
                var number = await delayNumberWithError();
                print(number);

                print("456");
              },
              child: Text("Demo Future"),
            )
          ],
        ),
      ),
    );
  }
}

Future<void> asyncMethod() {
 return Future.delayed(Duration(seconds: 2), () => print("asyncMethod"));
}

// Quan tam ket qua tra ve - C1: await + async
Future<int> delayNumber() {
  return Future.delayed(Duration(seconds: 2), () => 100);
}

// Su dung callback  then

// Future<int> getAge() {
//   final c = Completer<int>();
//   Future.delayed(Duration(seconds: 2), () {
//     c.complete(100);
//   });
//   return c.future;
// }

// 
Future<int> delayNumberWithError() {
  return Future.delayed(Duration(seconds: 2), () => throw Exception("Co loi xay ra"));
}

