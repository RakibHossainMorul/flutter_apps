import 'package:flutter/material.dart';
import 'avengers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.red,
        textTheme: ThemeData.light().textTheme.copyWith(
              headline1: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              bodyText1: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              bodyText2: const TextStyle(
                fontSize: 23,
                color: Colors.green,
              ),
            ),
        appBarTheme: AppBarTheme(
          // ignore: deprecated_member_use
          textTheme: ThemeData.light().textTheme.copyWith(
                titleLarge: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
      ),
      home: MyHomePage(title: 'Avengers'),
    );
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({required this.title}) : super();

  final avengers = [
    {'name': 'Black Panther', 'imgSrc': 'images/america.jpg'},
    {'name': 'Captain Marvel', 'imgSrc': 'images/christine.jpg'},
    {'name': 'Iron Man', 'imgSrc': 'images/doctor-strange.jpg'},
    {'name': 'Thanos', 'imgSrc': 'images/last.jpg'},
    {'name': 'Spider Man', 'imgSrc': 'images/wanda.jpg'},
    {'name': 'Wong', 'imgSrc': 'images/wong.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: avengers.length,
          itemBuilder: (BuildContext ctx, int index) {
            return Avengers(
                avengers[index]['name']!, avengers[index]['imgSrc']!);
          }),
    );
  }
}
