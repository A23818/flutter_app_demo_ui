import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class Demo3 extends StatefulWidget {
  @override
  _Demo3State createState() => _Demo3State();
}

class _Demo3State extends State<Demo3> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    // return Container(
      
    // );
    return Center(
      child: ShareDataWidget(
        data: count,
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TestDidChangeDependenciesWidget(),
            RaisedButton(
              child: Text("Increment"),
              onPressed: () => setState(() => ++count),
            )
          ],
        )
      ),
    );
  }
}

class TestDidChangeDependenciesWidget extends StatefulWidget {
  @override
  _TestDidChangeDependenciesWidgetState createState() => _TestDidChangeDependenciesWidgetState();
}

class _TestDidChangeDependenciesWidgetState extends State<TestDidChangeDependenciesWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      ShareDataWidget.of(context).data.toString(),
      style: TextStyle(fontSize: 20),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Dependencies change");
  }
}

class ShareDataWidget extends InheritedWidget {
  ShareDataWidget({@required this.data, Widget child}) : super(child: child);

  final int data;

  static ShareDataWidget of (BuildContext context) {
    return context.inheritFromWidgetOfExactType(ShareDataWidget);
  }

  @override 
  bool updateShouldNotify(ShareDataWidget old) {
    return true;
  }

}