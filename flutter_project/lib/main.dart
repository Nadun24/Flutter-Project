import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/alertBox.dart';
import 'package:flutter_project/Pages/firstPage.dart';
import 'package:flutter_project/Pages/newalertBox.dart';

import 'package:flutter_project/Pages/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            body: Builder(
              builder: (context) {
                return Center(
                  child: Column(
                    children: [
                      ElevatedButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FirstPage(),
                            ),
                        );
                      }, child: Text("screen1")),
                      ElevatedButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondPage(),
                            ),
                        );
                      }, child: Text("screen2")),
                      ElevatedButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlertBox(),
                            ),
                        );
                      }, child: Text("screen3 ")),
                      ElevatedButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewAlertBox(),
                            ),
                        );
                      }, child: Text("screen3 ")),
                      
                    ],
                  ),
                );
              }
            ),
          ),
        ),
    );
  }
}

