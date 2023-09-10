import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//class name capital se shuru kro
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: SafeArea(
          child: Center(
              child: Text(
            x.toString(),
            style: TextStyle(fontSize: 50),
          )),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            x++;
            print(x.toString());
            setState(() {});
          },
        ),
      ),
    );
  }
}
