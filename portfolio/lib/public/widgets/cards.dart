import 'package:flutter/material.dart';
import 'package:portfolio/public/widgets/horizontalcards.dart';
import 'dart:js' as js;

class CardsH extends StatefulWidget {
  @override
  _CardsHState createState() => _CardsHState();
}

class _CardsHState extends State<CardsH> {
  final textWhiteDesc =
      TextStyle(fontWeight: FontWeight.w900, color: Colors.white, fontSize: 18);
  final textWhiteEditor =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16);

  HorizontalCards horizontalCards;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
      itemCount: horizCards.length,
      itemBuilder: (context, i) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Card(
            elevation: 4.0,
            color: horizCards[i].cardBg,
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: horizCards[i].cardBg.withOpacity(0.6),
                  blurRadius: 5.0,
                ),
              ]),
              width: 200,
              height: 320,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 150,
                    child: AspectRatio(
                      aspectRatio: 1.37,
                      child: Image.network(
                        horizCards[i].imgUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                      child: Text(
                    horizCards[i].title,
                    style: textWhiteDesc,
                  )),
                  Text(
                    horizCards[i].editor,
                    style: textWhiteEditor,
                  ),
                  RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "view",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      js.context.callMethod("open", [horizCards[i].url]);
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
