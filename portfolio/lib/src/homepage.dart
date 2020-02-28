import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/src/appthemes.dart';
import 'dart:js' as js;
import 'package:portfolio/src/responsivewidget.dart';
import 'package:portfolio/src/smallscreens/smallscreen.dart';
import 'package:portfolio/src/tabs.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  final List<String> imgList = [
    "assets/3.jpg",
  ];
  //circle color blinker
  Animation<Color> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 4500), vsync: this);
    final CurvedAnimation curve =
        CurvedAnimation(parent: controller, curve: Curves.linear);
    animation =
        ColorTween(begin: Colors.green, end: Colors.white).animate(curve);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
      setState(() {});
    });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                child: AnimatedBuilder(
                    animation: animation,
                    builder: (BuildContext context, Widget child) {
                      return Container(
                          height: 140,
                          width: 160,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                          ),
                          child: CarouselSlider(
                            autoPlay: true,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 3000),
                            items: imgList.map((url) {
                              return Image.asset(
                                url,
                                scale: 2.0,
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                              );
                            }).toList(),
                          ));
                    })),
                    SizedBox(height: 10,),
            Text(
              """
Hi, I'm Griffins
Frontend devloper with a passion in ML and AI .
I make stuff happen. \n
Talk to me about tech, planes,football,space and supercars.
""",
              style: AppThemeStyles.textboldHugeW,
            ),
            Tabs(),
          ],
        ),
        bottomSheet: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Built with flutter "),
              FlutterLogo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget smallScreen() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
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
Hi, I'm Griffins
Frontend devloper with a passion in ML and AI .
I make stuff happen. \n
Talk to me about tech, planes,football,space and supercars.
""",
                style: AppThemeStyles.textboldHugeW,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Current dev stack "),
              currentStack(),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 8,
              ),
              Text("Technologies I have used "),
              SizedBox(
                height: 8,
              ),
              techUsed(),
              SizedBox(
                height: 20,
              ),
              social(),
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
              FloatingActionButton.extended(
                hoverColor: Colors.amberAccent,
                icon: Image.asset(
                  "assets/gith.png",
                  height: 50,
                  width: 50,
                ),
                label: Text("Source Code"),
                onPressed: () {
                  js.context.callMethod(
                      "open", ["https://github.com/ggichure/portfolio"]);
                },
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
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

  Widget techUsed() {
    return Wrap(
      spacing: 4,
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

  Widget stuffImLearning() {
    return Wrap(
      spacing: 4,
      children: <Widget>[
        Chip(
          label: Text("GCP"),
          shape: StadiumBorder(),
          backgroundColor: Colors.red,
        ),
        Chip(
          label: Text("AZURE"),
          shape: StadiumBorder(),
          backgroundColor: Colors.blue,
        ),
        Chip(
          label: Text("AWS"),
          shape: StadiumBorder(),
          backgroundColor: Colors.red,
        ),
        Chip(
          label: Text("Object Detection TF"),
          shape: StadiumBorder(),
          backgroundColor: Colors.deepOrange,
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

  @override
  bool get wantKeepAlive => true;
}
