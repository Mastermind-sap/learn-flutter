import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('images/logo.png'),
                        height: 50,
                        width: 50,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My",
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: "Rubik Medium",
                                color: Colors.amber),
                          ),
                          Text(
                            "Log in",
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: "Rubik Medium",
                                color: Colors.amber),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(60.0),
                    child: Center(
                        child: Text(
                      "Log in",
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Rubik Medium",
                          color: Colors.amber),
                    )),
                  ),
                  const SizedBox(height: 15),
                  const Center(
                      child: Text(
                    "Enter required details.\nHi please fill",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Rubik Regular",
                        color: Colors.blue),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 150.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          fillColor: Colors.green,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(10)),
                          prefixIcon: const Icon(
                            Icons.alternate_email,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0, left: 50.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          fillColor: Colors.green,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(10)),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          suffixIcon: const Icon(Icons.visibility_off_outlined,color: Colors.black,)),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Text(
                        "Box",
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Rubik Medium",
                            color: Colors.lightGreenAccent),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont have an account?",
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Rubik Medium",
                            color: Colors.amber),
                      ),
                      Text(
                        "Log in",
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Rubik Medium",
                            color: Colors.amber),
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}
