import 'package:flutter/material.dart';
import 'package:portfolio/src/appthemes.dart';
import 'package:portfolio/src/data/projects.dart';
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
        appBar: AppBar(
          leading: ClipRRect(
            child: Container(
                height: 20,
                width: 20,
                child: Image.network(AppThemeStyles.avatarUrl)),
          ),
          actions: <Widget>[],
          elevation: 0.0,
        ),
        body: ResponsiveWidget.isSmallScreen(context)
            ? smallScreen()
            : largeScreen(),
      ),
    );
  }

  Widget largeScreen() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: LargeScreensFeed(),
          width: MediaQuery.of(context).size.width * .68,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .30,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  """
Hi, I'm Griffins
Frontend devloper Flutter
with a passion in ML and AI.
I make stuff happen. \n
Talk to me about tech, planes,football,space and supercars.
""",
                  style: AppThemeStyles.textboldHugeW,
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
                SizedBox(
                  height: 20,
                ),
                EasyCard(
                  titleColor: Colors.teal,
                  prefixBadge: Colors.green,
                  title: "what I'm upto",
                  description:
                      "\nDeveloping products,\n Flutter meetups\nHanging in weird chat rooms </>\ncycling",
                  descriptionColor: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                EasyCard(
                  titleColor: Colors.cyan,
                  prefixBadge: Colors.red,
                  title: "Current dev stack",
                  description:
                      "\nFlutter\nJava\nKotlin \nNode js\nFirebase \nJavaScript (ES2015)",
                  descriptionColor: Colors.black,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text(
            """
Hi, I'm Griffins
Frontend devloper Flutter
with a passion in ML and AI.
I make stuff happen. 
Talk to me about tech, planes,football,space and supercars.
""",
            style: AppThemeStyles.textboldHugeW,
          ),
          SizedBox(
            height: 20,
          ),
          EasyCard(
            titleColor: Colors.teal,
            prefixBadge: Colors.green,
            title: "what I'm upto",
            description:
                "\nDeveloping products,\n Flutter meetups\nHanging in weird chat rooms </>\ncycling",
            descriptionColor: Colors.black,
          ),
          SizedBox(
            height: 20,
          ),
          EasyCard(
            titleColor: Colors.cyan,
            prefixBadge: Colors.red,
            title: "Current dev stack",
            description:
                "\nFlutter\nJava\nKotlin \nNode js\nFirebase \nJavaScript (ES2015)",
            descriptionColor: Colors.black,
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
          FlatButton(
            child: Text("projects"),
            onPressed: () {
              showProjects();
            },
          )
        ],
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
