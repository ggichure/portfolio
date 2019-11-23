import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SideBarmenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/rocket.png"),
          fit: BoxFit.fitHeight,
        ),
      ),
      width: 150,
      // height: MediaQuery.of(context).size.width * 1.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/midr.png"),
                ),
                color: Colors.purple,
                shape: BoxShape.rectangle,
              ),
              padding: EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    iconSize: 36,
                    icon: Icon(
                      Icons.explore,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    iconSize: 36,
                    icon: Icon(
                      Icons.group_work,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    iconSize: 36,
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue[200]),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RawMaterialButton(
                      constraints: BoxConstraints(minWidth: 40, maxWidth: 40),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/homep");
                      },
                      child: new Icon(
                        Icons.directions_boat,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      elevation: 2.0,
                      fillColor: Colors.purpleAccent,
                      padding: const EdgeInsets.all(4.0),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RawMaterialButton(
                      constraints: BoxConstraints(minWidth: 40, maxWidth: 40),
                      onPressed: () {},
                      child: new Icon(
                        Icons.directions_bus,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      elevation: 2.0,
                      fillColor: Colors.amberAccent,
                      padding: const EdgeInsets.all(4.0),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RawMaterialButton(
                      constraints: BoxConstraints(minWidth: 40, maxWidth: 40),
                      onPressed: () {},
                      child: new Icon(
                        Icons.directions_transit,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      elevation: 2.0,
                      fillColor: Colors.deepOrangeAccent,
                      padding: const EdgeInsets.all(4.0),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RawMaterialButton(
                      constraints: BoxConstraints(minWidth: 40, maxWidth: 40),
                      onPressed: () {},
                      child: new Icon(
                        Icons.directions_bike,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      elevation: 2.0,
                      fillColor: Colors.blueAccent,
                      padding: const EdgeInsets.all(4.0),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RawMaterialButton(
                      constraints: BoxConstraints(minWidth: 40, maxWidth: 40),
                      onPressed: () {},
                      child: new Icon(
                        Icons.golf_course,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      elevation: 2.0,
                      fillColor: Colors.greenAccent,
                      padding: const EdgeInsets.all(4.0),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              width: 150,
              height: 80,
              color: Colors.redAccent,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.equalizer,
                        color: Colors.white,
                      ),
                      Text("Elevation")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(Icons.play_arrow, color: Colors.white),
                      Icon(Icons.mic_none, color: Colors.white),
                      Icon(Icons.headset, color: Colors.white),
                      Icon(Icons.settings, color: Colors.white),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
