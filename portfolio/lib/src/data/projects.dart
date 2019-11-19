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
