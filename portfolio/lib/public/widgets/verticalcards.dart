import 'package:flutter/material.dart';
import 'package:portfolio/public/widgets/horizontalcards.dart';
import 'dart:js' as js;

class Verticalcards extends StatefulWidget {
  @override
  _VerticalcardsState createState() => _VerticalcardsState();
}

class _VerticalcardsState extends State<Verticalcards> {
  final textWhiteDesc =
      TextStyle(fontWeight: FontWeight.w900, color: Colors.black, fontSize: 20);
  final textWhiteEditor =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18);

  HorizontalCards horizontalCards;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(8),
      itemCount: horizCards.length,
      itemBuilder: (context, i) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Card(
            color: Colors.white,
            elevation: 4.0,
            child: Container(
              padding: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width * .69,
              height: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 220,
                      child: AspectRatio(
                        aspectRatio: 1.29,
                        child: Image.network(
                          horizCards[i].imgUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          horizCards[i].title,
                          style: textWhiteDesc,
                          softWrap: true,
                        ),
                        Text(
                          horizCards[i].editor,
                          style: textWhiteEditor,
                        ),
                        RaisedButton(
                          color: Colors.blue[100],
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
