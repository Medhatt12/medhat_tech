import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color});
}

List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "AcadiA Pharma CEO",
    review:
        'Mohamed is a meticulous planner and instantly started spending less money on our projects . While I was losing a little income due to a drop in sales, I could not help but admire Mohamed’s innovative approach.',
    userPic: "assets/images/medhat.png",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "Sarah Robinson, HR expert",
    review:
        "I endorse Mohamed's Web Development skills and Game Development Skills.",
    userPic: "assets/images/sarah.png",
    color: Color(0xFFD9FFFC),
  ),
];
