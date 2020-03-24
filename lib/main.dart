import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';


main(List<String> args) {
  //Nhung cach tao ra 1 stream
  // Listener 1 stream
  // Loai Stream single subscription or broadcast
  // Stream transformer


  // var data = Future<int>.delayed(Duration(seconds: 1), () {return 100;});
  // // Stream<int> stream = Stream<int>.fromFuture(data);

  // Stream<int> stream = Stream<int>.fromFuture(data).asBroadcastStream();
  // stream.listen((data) { 
  //   print(data.toString());
  // }, onDone: () {
  //   print("done");
  // });

  // var data1 = Iterable<int>.generate(10, (value) {
  //   return value*1000;
  // });

  // //Ktra dang timer
  // Stream<int> stream2 = Stream.periodic(Duration(seconds: 1), (value) {
  //   return value;
  // })

  // Single Subscription chi cho phep 1 client listener vao Stream. 
  // Boradcast cho nhieu cung lissten


  //Stream controller

  StreamController<int> controller = StreamController<int>();

  controller.stream.listen((data) {
    print(data);
  });

  controller.sink.add(100);
  controller.sink.add(200);

  print("===========");

  // Stream transformer
  // Stream<int> stream = Stream.periodic(Duration(seconds: 1), (value) {
  //   return value;
  // })

  // stream.transform(StreamTransformer.fromHandlers(handleData: (input, sink)))



  // Stream Builder View Flutter
}