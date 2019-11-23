import 'package:flutter/material.dart';
import 'package:portfolio/public/widgets/cards.dart';
import 'package:portfolio/public/widgets/sidebar.dart';
import 'package:portfolio/public/widgets/verticalcards.dart';

class PublicHome extends StatefulWidget {
  @override
  _PublicHomeState createState() => _PublicHomeState();
}

class _PublicHomeState extends State<PublicHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SideBarmenu(),
          Column(
            children: <Widget>[
              Text("SAVED"),
              Container(
                padding: EdgeInsets.all(4),
                width: MediaQuery.of(context).size.width * .70,
                height: 320,
                child: CardsH(),
              ),
              Text("FROM YOUR LIST"),
              Container(
                padding: EdgeInsets.all(4),
                width: MediaQuery.of(context).size.width * .70,
                height: MediaQuery.of(context).size.height * .70,
                child: Verticalcards(),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("under construction"),
        onPressed: () {},
      ),
    );
  }
}
