import 'package:flutter/material.dart';
import 'package:portfolio/public/widgets/sidebar.dart';

class PublicHome extends StatefulWidget {
  @override
  _PublicHomeState createState() => _PublicHomeState();
}

class _PublicHomeState extends State<PublicHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(child: SideBarmenu()),
          ],
        ),
      ),
    );
  }
}
