import 'package:flutter/material.dart';
import 'count_text.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return App();
  }
}

class App extends State<MyApp> {
  var count = 0;

  void increaseCount() {
    setState(() {
      count++;
    });
    print("Button Clicked");
  }

  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter APP'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: increaseCount,
          child: Icon(Icons.add),
        ),
        body: Center(child: count_text(count)),
      ),
    );
  }
}
