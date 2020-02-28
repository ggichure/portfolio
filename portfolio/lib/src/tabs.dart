import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'data/projects.dart';
import 'smallscreens/smallscreen.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: DefaultTabController(
          initialIndex: 0,
          length: 4,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    indicatorColor: Colors.orangeAccent,
                    unselectedLabelColor: Colors.grey,
                    labelPadding: EdgeInsets.only(
                      bottom: 8,
                      top: 8,
                    ),
                    indicatorWeight: 4.5,
                    labelColor: Colors.white,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    tabs: <Widget>[
                      Container(
                        width: 180,
                        child: Center(
                          child: Text("Current Stack"),
                        ),
                      ),
                      Container(
                        width: 180,
                        child: Center(
                          child: Text("Tech used"),
                        ),
                      ),
                      Container(
                        width: 180,
                        child: Center(
                          child: Text("projects"),
                        ),
                      ),
                      Container(
                        width: 140,
                        child: Center(
                          child: Text("Contact"),
                        ),
                      ),
                    ]),
              ),
              Container(alignment: Alignment.topCenter,
                margin: EdgeInsets.symmetric(vertical: 25),
                padding: EdgeInsets.symmetric(horizontal: 0),
                width:  MediaQuery.of(context).size.height * .60,
                height: MediaQuery.of(context).size.height * .70,
                child: TabBarView(children: <Widget>[
                  currentStack(),
                  
                  techUsed(),
                  Text("coming soon"),
                  social(),
                ]),
              )
            ],
          )),
    );
  }

  Widget techUsed() {
    return Wrap(
      spacing: 14,
      children: <Widget>[
        Chip(
          label: Text("Webpack"),
          shape: StadiumBorder(),
        ),
        Chip(
          label: Text("jQuery"),
          shape: StadiumBorder(),
        ),
        Chip(
          label: Text("PHP"),
          shape: StadiumBorder(),
        ),
        Chip(
          label: Text("SQL"),
          shape: StadiumBorder(),
        ),
        Chip(
          label: Text("MVC"),
          shape: StadiumBorder(),
        ),
        Chip(
          label: Text("React"),
          shape: StadiumBorder(),
        ),
        Chip(
          label: Text("MYSQL"),
          shape: StadiumBorder(),
        ),
        Chip(
          label: Text("Bootsrap"),
          shape: StadiumBorder(),
        ),
        Chip(
          label: Text("Wordpress"),
          shape: StadiumBorder(),
        ),
        Chip(
          label: Text("e.t.c"),
          shape: StadiumBorder(),
        ),
      ],
    );
  }

  Widget currentStack() {
    return Wrap(
      spacing: 4,
      children: <Widget>[
        Chip(
          label: Text("Flutter"),
          shape: StadiumBorder(),
          backgroundColor: Colors.blue,
        ),
        Chip(
          label: Text("Android"),
          shape: StadiumBorder(),
          backgroundColor: Colors.teal,
        ),
        Chip(
          label: Text("Firebase"),
          shape: StadiumBorder(),
          backgroundColor: Colors.amberAccent,
        ),
        Chip(
          label: Text("Node Js"),
          shape: StadiumBorder(),
          backgroundColor: Colors.green,
        ),
        Chip(
          label: Text("Javascript"),
          shape: StadiumBorder(),
          backgroundColor: Colors.blueGrey,
        ),
        Chip(
          label: Text("iOS"),
          shape: StadiumBorder(),
          backgroundColor: Colors.grey,
        ),
        Chip(
          label: Text("Kotlin"),
          shape: StadiumBorder(),
          backgroundColor: Colors.purpleAccent,
        ),
        Chip(
          label: Text("Java"),
          shape: StadiumBorder(),
          backgroundColor: Colors.lightBlueAccent,
        ),
        Chip(
          label: Text("Python"),
          shape: StadiumBorder(),
          backgroundColor: Colors.blue,
        ),
        Chip(
          label: Text("Mongo DB"),
          shape: StadiumBorder(),
          backgroundColor: Colors.lime,
        ),
        Chip(
          label: Text("Tensor Flow"),
          shape: StadiumBorder(),
          backgroundColor: Colors.deepOrange,
        ),
        Chip(
          label: Text("GCP"),
          shape: StadiumBorder(),
          backgroundColor: Colors.orangeAccent,
        ),
        Chip(
          label: Text(" OpenVINO"),
          shape: StadiumBorder(),
          backgroundColor: Colors.blue[200],
        ),
      ],
    );
  }

  Widget social() {
    return Wrap(
      spacing: 5,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            js.context.callMethod("open", ["https://github.com/ggichure"]);
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
            js.context.callMethod(
                "open", ["https://stackoverflow.com/users/10409567/g-griffo"]);
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
            js.context.callMethod("open", ["https://twitter.com/Ggriffo68"]);
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
            js.context.callMethod("open", ["https://medium.com/@Ggriffo"]);
          },
          child: Tab(
            icon: Image.asset(
              "assets/medium.png",
              height: 50,
              width: 50,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            js.context.callMethod("open", ["https://t.me/g_ggriffo"]);
          },
          child: Tab(
            icon: Image.asset(
              "assets/tl.png",
              height: 50,
              width: 50,
            ),
          ),
        ),
      ],
    );
  }
}
