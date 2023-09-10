import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/provider/color_provider.dart';
import 'package:provider1/provider/count_provider.dart';
import 'package:provider1/screens/colorpicker.dart';
import './screens/count.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: Scaffold(
    //       appBar: AppBar(title: Text("Provider State Management")),
    //       body: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Center(
    //             child: ElevatedButton(
    //                 onPressed: () {
    //                   Navigator.push(context,
    //                       MaterialPageRoute(builder: (context) => const Count()));
    //                 },
    //                 child: Text("Count")),
    //           )
    //         ],
    //       )),
    // );

    // return ChangeNotifierProvider(
    //   create: (_) => CountProvider(),
    //   child: MaterialApp(home: Count()),
    // );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ColorProvider()),
      ],
      child: MaterialApp(home: ColorPicker()),
    );
  }
}
