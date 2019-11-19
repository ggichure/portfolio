import 'package:flutter/material.dart';

class Doodle {
  final String name;
  final String time;
  final String content;
  final String doodle;
  final Color iconBackground;
  final Icon icon;
  const Doodle(
      {this.name,
      this.time,
      this.content,
      this.doodle,
      this.icon,
      this.iconBackground});
}

const List<Doodle> doodles = [
  Doodle(
      name: "search engine for job listings",
      time: "#flutter mobile web",
      content:
          "With ACK ST PETERS JOB APP, you can search millions of jobs online to find the next step in your career. With tools for job search, resumes, company reviews and more, ",
      doodle: "https://ackstpeters-e.web.app/#/",
      icon: Icon(Icons.work, color: Colors.white),
      iconBackground: Colors.cyan),
  Doodle(
      name: "Waringa Vet Services",
      time: " #flutter mobile web",
      content:
          "An upcoming local vet clinic .The website serves as a showcase and also management of day to day activities",
      doodle: "https://drjemmy-e73d0.web.app/#/",
      icon: Icon(
        Icons.store,
        color: Colors.white,
      ),
      iconBackground: Colors.redAccent),
  Doodle(
      name: "tourismconcept",
      time: " #flutter mobile web",
      content:
          "A concept tourism app for fun  https://dribbble.com/shots/6510521-Travel-App-for-booking-unique-experience",
      doodle: "https://github.com/ggichure/tourismconcept",
      icon: Icon(
        Icons.airplanemode_active,
        color: Colors.white,
      ),
      iconBackground: Colors.blue),
  Doodle(
      name: "Curio online",
      time: " #flutter mobile web",
      content:
          "Online Curio shop ,connect customers with the curio artists,hand crafted ,custom designs etc",
      doodle: "https://github.com/ggichure/tourismconcept/tree/curio",
      icon: Icon(
        Icons.shopping_cart,
        color: Colors.white,
      ),
      iconBackground: Colors.green),
];

class EasyCard extends StatelessWidget {
  final Color prefixBadge;
  final Color suffixBadge;
  final IconData icon;
  final IconData suffixIcon;
  final Color iconColor;
  final Color suffixIconColor;
  final String title;
  final String description;
  final Function onTap;
  final Color backgroundColor;
  final Color titleColor;
  final Color descriptionColor;

  const EasyCard({
    Key key,
    this.prefixBadge,
    this.suffixBadge,
    this.icon,
    this.iconColor,
    this.title,
    this.description,
    this.suffixIcon,
    this.suffixIconColor,
    this.onTap,
    this.backgroundColor,
    this.descriptionColor,
    this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: this.onTap,
        child: Card(
          color: (this.backgroundColor != null)
              ? this.backgroundColor
              : Colors.white,
          margin: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              (this.prefixBadge != null)
                  ? Container(
                      width: 10.0,
                      height: 70.0,
                      color: this.prefixBadge,
                    )
                  : Container(),
              (this.icon != null)
                  ? Container(
                      margin: const EdgeInsets.all(5.0),
                      width: 50.0,
                      height: 50.0,
                      child: Icon(
                        this.icon,
                        color: (this.iconColor != null)
                            ? this.iconColor
                            : Colors.black,
                      ),
                    )
                  : Container(
                      margin: const EdgeInsets.only(left: 20.0),
                    ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      (this.title != null)
                          ? Container(
                              padding: EdgeInsets.all(12),
                              child: Text(
                                this.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: (this.titleColor != null)
                                        ? this.titleColor
                                        : Colors.black),
                              ),
                            )
                          : Container(),
                      (this.description != null)
                          ? Container(
                              padding: EdgeInsets.all(16),
                              width: MediaQuery.of(context).size.width * .98,
                              color: Colors.pink[50],
                              child: Text(
                                this.description,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: 16.0,
                                    color: (this.descriptionColor != null)
                                        ? this.descriptionColor
                                        : Colors.grey),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
              (this.suffixIcon != null)
                  ? Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      child: Icon(this.suffixIcon,
                          color: (this.suffixIconColor != null)
                              ? this.suffixIconColor
                              : Colors.black),
                    )
                  : Container(),
              (this.suffixBadge != null)
                  ? Container(
                      width: 10.0,
                      height: 60.0,
                      color: this.suffixBadge,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
