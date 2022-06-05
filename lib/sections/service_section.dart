import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/service.dart';
import '../widgets/service section/section_title.dart';
import '../widgets/service section/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SectionTitle(
            color: Color(0xFFFF0000),
            title: "Skills & Experience",
            subTitle: "My Strong Arenas",
          ),
          Wrap(
            spacing: 10,
            runSpacing: 20,
            children: List.generate(
                services.length,
                (index) => ServiceCard(
                      index: index,
                      press: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return SimpleDialog(
                              backgroundColor: services[index].color,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              elevation: 16,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(
                                            kDefaultPadding * 1.5),
                                        height: 120,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          services[index].image,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "Title: ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(services[index].title),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "Details: ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Flexible(
                                            //width: 400,
                                            child: Text(
                                                services[index].description),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    )),
          ),
        ],
      ),
    );
  }
}
