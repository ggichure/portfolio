import 'package:flutter/material.dart';
import 'package:portfolio/src/src.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "/homep": (context) => HomePage(),
        },
        title: 'Ggriffo',
        theme: ThemeData(
            primarySwatch: Colors.blueGrey, brightness: Brightness.dark),
        home: HomePage());
  }
}
