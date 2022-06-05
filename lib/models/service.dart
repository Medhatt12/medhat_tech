import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image, description;
  final Color color;

  Service({this.id, this.title, this.image, this.description, this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Cross-Platform App Development",
    image: "assets/images/flutter-logo.png",
    description:
        "Developing Cross-Platform Apps (IOS Apps, Android Apps, Web Apps, Windows, macOS and Linux apps). Using Flutter Framework and for backend Firebase.",
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "WordPress Development",
    image: "assets/images/WordPress-Logo.png",
    description:
        "Developing WordPress websites; E-commerce websites using woocommerce plugin for WordPress.",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "Game Development",
    image: "assets/images/unity-logo.png",
    description:
        "Developing windows, macOS, WebGL and Mobile Games; Using Unity and C# for scripting language.",
    color: Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "And More",
    image: "assets/images/Intreaction_design.png",
    description:
        "Other languages I use are Java, Python, JavaScript. Other fields of interest are IoT: developing projects using ESP32, arduino and ThingsBoard Platform. Data engineering: working on some projects using PySpark. Biomedical engineering: working with SciPy & numPy.",
    color: Color(0xFFFFE0E0),
  ),
];
