import 'package:flutter/material.dart';
import 'package:portfolio/public/home/publichome.dart';
import 'package:portfolio/public/widgets/cards.dart';
import 'package:portfolio/public/widgets/sidebar.dart';
import 'package:portfolio/src/src.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "/cards": (context) => CardsH(),
        },
        title: 'Ggriffo',
        theme: ThemeData(
            primarySwatch: Colors.blueGrey, brightness: Brightness.dark),
        home: PublicHome());
  }
}
