import 'package:flutter/material.dart';
import 'package:portfolio/src/appthemes.dart';
import 'src.dart';
import 'package:portfolio/src/largescreens/largescreens.dart';
import 'dart:js' as js;

import 'package:portfolio/src/responsivewidget.dart';
import 'package:portfolio/src/smallscreens/smallscreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        body: ResponsiveWidget.isSmallScreen(context)
            ? smallScreen()
            : largeScreen(),
      ),
    );
  }

  Widget largeScreen() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * .60,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Text(
                  """
Hi, I'm Griffins
Frontend devloper with a passion in ML and AI.
I make stuff happen. \n
Talk to me about tech, planes,football,space and supercars.
""",
                  style: AppThemeStyles.textboldHugeW,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Current dev stack "),
                SizedBox(
                  height: 8,
                ),
                Wrap(
                  spacing: 4,
                  children: <Widget>[
                    Chip(
                      label: Text("flutter"),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.blue,
                    ),
                    Chip(
                      label: Text("android"),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.teal,
                    ),
                    Chip(
                      label: Text("iOS"),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.grey,
                    ),
                    Chip(
                      label: Text("kotlin"),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.purpleAccent,
                    ),
                    Chip(
                      label: Text("java"),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.red,
                    ),
                    Chip(
                      label: Text("Firebase"),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.deepOrangeAccent,
                    ),
                    Chip(
                      label: Text("node js"),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.green,
                    ),
                    Chip(
                      label: Text("javascript"),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.redAccent,
                    ),
                    Chip(
                      label: Text("python"),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.blue,
                    ),
                    Chip(
                      label: Text("mongo db"),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.lime,
                    ),
                    Chip(
                      label: Text("GCP"),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.blue,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text("Technologies I have used "),
                SizedBox(
                  height: 8,
                ),
                Wrap(
                  spacing: 4,
                  children: <Widget>[
                    Chip(
                      label: Text("webpack"),
                      shape: StadiumBorder(),
                    ),
                    Chip(
                      label: Text("jQuery"),
                      shape: StadiumBorder(),
                    ),
                    Chip(
                      label: Text("php"),
                      shape: StadiumBorder(),
                    ),
                    Chip(
                      label: Text("mongo db"),
                      shape: StadiumBorder(),
                    ),
                    Chip(
                      label: Text("mvc"),
                      shape: StadiumBorder(),
                    ),
                    Chip(
                      label: Text("react"),
                      shape: StadiumBorder(),
                    ),
                    Chip(
                      label: Text("e.t.c"),
                      shape: StadiumBorder(),
                    ),
                  ],
                ),
                Wrap(
                  spacing: 4,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        js.context.callMethod(
                            "open", ["https://github.com/ggichure"]);
                      },
                      child: Tab(
                        icon: Image.asset(
                          "assets/gith.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        js.context.callMethod("open", [
                          "https://stackoverflow.com/users/10409567/g-griffo"
                        ]);
                      },
                      child: Tab(
                        icon: Image.asset(
                          "assets/so.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        js.context.callMethod(
                            "open", ["https://twitter.com/Ggriffo68"]);
                      },
                      child: Tab(
                        icon: Image.asset(
                          "assets/twitter.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        js.context.callMethod(
                            "open", ["https://medium.com/@Ggriffo"]);
                      },
                      child: Tab(
                        icon: Image.asset(
                          "assets/medium.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    js.context.callMethod("open",
                        ["https://stackoverflow.com/users/10409567/g-griffo"]);
                  },
                  child: Image.network(
                    "https://stackexchange.com/users/flair/14410660.png",
                    height: 58,
                    width: 208,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget smallScreen() {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Text(
              """
Hi, I'm Griffins Frontend devloper.
I make stuff happen. 
Talk to me about tech, planes,football,space and supercars.
""",
              style: AppThemeStyles.textboldHugeW,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Current dev stack "),
            SizedBox(
              height: 8,
            ),
            Wrap(
              spacing: 4,
              children: <Widget>[
                Chip(
                  label: Text("flutter"),
                  shape: StadiumBorder(),
                  backgroundColor: Colors.blue,
                ),
                Chip(
                  label: Text("android"),
                  shape: StadiumBorder(),
                  backgroundColor: Colors.teal,
                ),
                Chip(
                  label: Text("Firebase"),
                  shape: StadiumBorder(),
                  backgroundColor: Colors.deepOrangeAccent,
                ),
                Chip(
                  label: Text("node js"),
                  shape: StadiumBorder(),
                  backgroundColor: Colors.green,
                ),
                Chip(
                  label: Text("javascript"),
                  shape: StadiumBorder(),
                  backgroundColor: Colors.redAccent,
                ),
                Chip(
                  label: Text("iOS"),
                  shape: StadiumBorder(),
                  backgroundColor: Colors.grey,
                ),
                Chip(
                  label: Text("kotlin"),
                  shape: StadiumBorder(),
                  backgroundColor: Colors.purpleAccent,
                ),
                Chip(
                  label: Text("java"),
                  shape: StadiumBorder(),
                  backgroundColor: Colors.red,
                ),
                Chip(
                  label: Text("python"),
                  shape: StadiumBorder(),
                  backgroundColor: Colors.blue,
                ),
                Chip(
                  label: Text("mongo db"),
                  shape: StadiumBorder(),
                  backgroundColor: Colors.lime,
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text("Technologies I have used "),
            SizedBox(
              height: 8,
            ),
            Wrap(
              spacing: 4,
              children: <Widget>[
                Chip(
                  label: Text("webpack"),
                  shape: StadiumBorder(),
                ),
                Chip(
                  label: Text("jQuery"),
                  shape: StadiumBorder(),
                ),
                Chip(
                  label: Text("php"),
                  shape: StadiumBorder(),
                ),
                Chip(
                  label: Text("mongo db"),
                  shape: StadiumBorder(),
                ),
                Chip(
                  label: Text("mvc"),
                  shape: StadiumBorder(),
                ),
                Chip(
                  label: Text("react"),
                  shape: StadiumBorder(),
                ),
                Chip(
                  label: Text("e.t.c"),
                  shape: StadiumBorder(),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    js.context
                        .callMethod("open", ["https://github.com/ggichure"]);
                  },
                  child: Tab(
                    icon: Image.asset(
                      "assets/gith.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    js.context.callMethod("open",
                        ["https://stackoverflow.com/users/10409567/g-griffo"]);
                  },
                  child: Tab(
                    icon: Image.asset(
                      "assets/so.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    js.context
                        .callMethod("open", ["https://twitter.com/Ggriffo68"]);
                  },
                  child: Tab(
                    icon: Image.asset(
                      "assets/twitter.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    js.context
                        .callMethod("open", ["https://medium.com/@Ggriffo"]);
                  },
                  child: Tab(
                    icon: Image.asset(
                      "assets/medium.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                js.context.callMethod("open",
                    ["https://stackoverflow.com/users/10409567/g-griffo"]);
              },
              child: Image.network(
                "https://stackexchange.com/users/flair/14410660.png",
                height: 58,
                width: 208,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  showProjects() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(8),
            title: Text("projects"),
            content: SmallScreen(),
          );
        });
  }
}
