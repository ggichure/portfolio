import 'package:flutter/material.dart';

class HorizontalCards {
  final String title, editor, url, imgUrl;
  final Color cardBg;
  const HorizontalCards(
      {this.title, this.editor, this.cardBg, this.url, this.imgUrl});
}

const List<HorizontalCards> horizCards = [
  HorizontalCards(
    cardBg: Colors.orange,
    title: "What does it mean that “Firestore security rules are not filters?",
    editor: "Doug Stevenson",
    imgUrl: "https://miro.medium.com/max/498/0*9vmFNb4WS7y0KM6F",
    url:
        "https://medium.com/firebase-developers/what-does-it-mean-that-firestore-security-rules-are-not-filters-68ec14f3d003",
  ),
  HorizontalCards(
    cardBg: Colors.deepOrange,
    title: "Patterns for security with Firebase  Firestore and Cloud Functions",
    editor: "Doug Stevenson",
    imgUrl: "https://miro.medium.com/max/498/0*9vmFNb4WS7y0KM6F",
    url:
        "https://medium.com/firebase-developers/patterns-for-security-with-firebase-supercharged-custom-claims-with-firestore-and-cloud-functions-bb8f46b24e11",
  ),
  HorizontalCards(
    cardBg: Colors.cyan,
    title: "Building an API With Firebase",
    editor: "Andrew Evans",
    imgUrl: "https://miro.medium.com/max/3306/0*a0yi4etYe-FPA17X",
    url:
        "https://medium.com/better-programming/building-an-api-with-firebase-109041721f77",
  ),
  HorizontalCards(
    cardBg: Colors.redAccent,
    title: "GitHub stars won’t pay your rent",
    editor: "Kitze",
    imgUrl: "https://miro.medium.com/max/1900/1*4VX9xRv1-9tCc2ETdZOVhQ.jpeg",
    url:
        "https://medium.com/@kitze/github-stars-wont-pay-your-rent-8b348e12baed",
  ),
  HorizontalCards(
    cardBg: Colors.lightBlueAccent,
    title: "ways machine learning can improve your business",
    editor: "Louis Dorard",
    imgUrl: "https://miro.medium.com/max/867/1*b-WQEUOwh8y2TLSnspuDjw.png",
    url:
        "https://medium.com/louis-dorard/9-ways-machine-learning-can-improve-your-business-d9cbf9499870",
  ),
  //delete this extras
  HorizontalCards(
    cardBg: Colors.purpleAccent,
    title: "What does it mean that “Firestore security rules are not filters?",
    editor: "Doug Stevenson",
    imgUrl: "https://miro.medium.com/max/498/0*9vmFNb4WS7y0KM6F",
    url:
        "https://medium.com/firebase-developers/what-does-it-mean-that-firestore-security-rules-are-not-filters-68ec14f3d003",
  ),
  HorizontalCards(
    cardBg: Colors.greenAccent,
    title:
        "Patterns for security with Firebase supercharged custom claims with Firestore and Cloud Functions",
    editor: "Doug Stevenson",
    imgUrl: "https://miro.medium.com/max/498/0*9vmFNb4WS7y0KM6F",
    url:
        "https://medium.com/firebase-developers/patterns-for-security-with-firebase-supercharged-custom-claims-with-firestore-and-cloud-functions-bb8f46b24e11",
  ),
  HorizontalCards(
    cardBg: Colors.blueGrey,
    title: "Building an API With Firebase",
    editor: "Andrew Evans",
    imgUrl: "https://miro.medium.com/max/3306/0*a0yi4etYe-FPA17X",
    url:
        "https://medium.com/better-programming/building-an-api-with-firebase-109041721f77",
  ),
  HorizontalCards(
    cardBg: Colors.tealAccent,
    title: "GitHub stars won\’t pay your rent",
    editor: "Kitze",
    imgUrl: "https://miro.medium.com/max/1900/1*4VX9xRv1-9tCc2ETdZOVhQ.jpeg",
    url:
        "https://medium.com/@kitze/github-stars-wont-pay-your-rent-8b348e12baed",
  ),
  HorizontalCards(
    cardBg: Colors.orangeAccent,
    title: "ways machine learning can improve your business",
    editor: "Louis Dorard",
    imgUrl: "https://miro.medium.com/max/867/1*b-WQEUOwh8y2TLSnspuDjw.png",
    url:
        "https://medium.com/louis-dorard/9-ways-machine-learning-can-improve-your-business-d9cbf9499870",
  ),
];
