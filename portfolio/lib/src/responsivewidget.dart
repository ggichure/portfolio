import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen, mediumScreen, smallScreen;
  const ResponsiveWidget(
      {Key key, this.largeScreen, this.mediumScreen, this.smallScreen})
      : super(key: key);
  static bool isSmallScreen(context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(context) {
    return MediaQuery.of(context).size.width > 800;
  }

  static bool isMediumScreen(context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          return largeScreen;
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 800) {
          return mediumScreen ?? largeScreen;
        } else
          return smallScreen ?? largeScreen;
      },
    );
  }
}
