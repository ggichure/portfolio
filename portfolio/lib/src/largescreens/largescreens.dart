import 'package:flutter/material.dart';
import 'package:portfolio/src/appthemes.dart';
import 'package:portfolio/src/data/data.dart';
import 'package:portfolio/src/usericon.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';
import 'dart:js' as js;

class LargeScreensFeed extends StatefulWidget {
  @override
  _LargeScreensFeedState createState() => _LargeScreensFeedState();
}

class _LargeScreensFeedState extends State<LargeScreensFeed> {
  Doodle doodle;
  final PageController pageController =
      PageController(initialPage: 1, keepPage: true);
  int pageIx = 1;
  timelineModel(TimelinePosition position) => Timeline.builder(
      itemBuilder: centerTimelineBuilder,
      itemCount: doodles.length,
      physics: position == TimelinePosition.Left
          ? ClampingScrollPhysics()
          : BouncingScrollPhysics(),
      position: position);
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      timelineModel(TimelinePosition.Left),
      timelineModel(TimelinePosition.Center),
      timelineModel(TimelinePosition.Right)
    ];

    return Scaffold(
        body: Container(
      child: timelineModel(TimelinePosition.Left),
    ));
  }

  TimelineModel centerTimelineBuilder(BuildContext context, int i) {
    final doodle = doodles[i];
    final textTheme = Theme.of(context).textTheme;
    return TimelineModel(
        Card(
          margin: EdgeInsets.symmetric(vertical: 16.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          clipBehavior: Clip.antiAlias,
          child: Container(
            width: MediaQuery.of(context).size.width * .5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(
                    height: 8.0,
                  ),
                  ClipRRect(
                      child: Container(
                          padding: EdgeInsets.all(12),
                          color: AppThemeStyles.randomColor(),
                          child: Text(doodle.time,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)))),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    doodle.content,
                    style: textTheme.title,
                    textAlign: TextAlign.center,
                  ),
                  RaisedButton(
                    hoverColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.blue[100])),
                    onPressed: () {
                      js.context.callMethod("open", [doodle.doodle]);
                    },
                    child: Text(
                      doodle.name,
                      style: TextStyle(
                          color: Colors.white60, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
          ),
        ),
        position:
            i % 2 == 0 ? TimelineItemPosition.right : TimelineItemPosition.left,
        isFirst: i == 0,
        isLast: i == doodles.length,
        iconBackground: doodle.iconBackground,
        icon: doodle.icon);
  }
}
