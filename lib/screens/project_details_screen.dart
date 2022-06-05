import 'dart:js' as js;

import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/recentwork.dart';
import '../widgets/buttons/default_button2.dart';

class ProjectDetailsScreen extends StatelessWidget {
  static const routeName = '/project-details-screen';

  @override
  Widget build(BuildContext context) {
    final projectId = ModalRoute.of(context).settings.arguments as int;

    RecentWork findById(int id) {
      return recentWorks.firstWhere((prod) => prod.id == id);
    }

    final loadedproject = findById(projectId);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(25, 25, 25, 1.0),
      appBar: AppBar(
        title: Text(loadedproject.title),
        backgroundColor: const Color.fromRGBO(25, 25, 25, 1.0),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      loadedproject.mockupUrl,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Title: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          loadedproject.title,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Details: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Flexible(
                          //width: 400,
                          child: Text(
                            loadedproject.description,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              FittedBox(
                child: DefaultButton2(
                  imageSrc: "assets/images/github-iconb.png",
                  text: "View Project!",
                  press: () {
                    js.context.callMethod(
                      'open',
                      [loadedproject.projectUrl],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
