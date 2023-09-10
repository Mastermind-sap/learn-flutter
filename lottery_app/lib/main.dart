// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'dart:math';

void main() {
  runApp(Lottery());
}

class Lottery extends StatefulWidget {
  const Lottery({super.key});

  @override
  State<Lottery> createState() => _LotteryState();
}

class _LotteryState extends State<Lottery> {
  int yourDraw = 0;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    int winning = random.nextInt(10);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lottery App"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Lottery winning number is $winning")),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: yourDraw == winning
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.done,
                            color: Colors.green,
                            size: 50,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Congratulations you have won \n your number was $yourDraw",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error_outline,
                            color: Colors.red,
                            size: 50,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Better luck next time your number was $yourDraw\nTry again",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            yourDraw = random.nextInt(10);
            setState(() {});
            print(yourDraw);
            print(winning);
          },
          child: Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
