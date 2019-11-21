import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SideBarmenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Expanded(
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/rocket.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
          width: 320,
          // height: MediaQuery.of(context).size.width * 1.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/cats.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.purple,
                    shape: BoxShape.rectangle,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        iconSize: 40,
                        icon: Icon(
                          Icons.home,
                          color: Colors.blue,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        iconSize: 40,
                        icon: Icon(
                          Icons.chrome_reader_mode,
                          color: Colors.blue,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        iconSize: 40,
                        icon: Icon(
                          Icons.info,
                          color: Colors.blue,
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
              Container(
                padding: EdgeInsets.all(8),
                color: Colors.transparent,
                width: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      color: Colors.redAccent,
                      iconSize: 40,
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    IconButton(
                      color: Colors.amberAccent,
                      iconSize: 40,
                      icon: Icon(
                        Icons.chrome_reader_mode,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    IconButton(
                      color: Colors.deepPurple,
                      iconSize: 40,
                      icon: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                width: 320,
                height: 80,
                color: Colors.redAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
