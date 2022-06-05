import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../sections/about_section.dart';
import '../sections/contact_section.dart';
import '../sections/feedback_section.dart';
import '../sections/recent_work_section.dart';
import '../sections/service_section.dart';
import '../sections/top_section.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  HomeScreen({Key key}) : super(key: key);
  var list = [
    TopSection(),
    AboutSection(),
    ServiceSection(),
    RecentWorkSection(),
    FeedbackSection(),
    ContactSection(),
  ];
  PageController controller = PageController();

  var menulist = [
    "ABOUT",
    "SKILLS",
    "RECENT WORK",
    "FEEDBACK",
    "CONTACT",
  ];
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  @override
  Widget build(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(25, 25, 25, 1.0),
        appBar: screenWidth < 700
            ? AppBar(
                backgroundColor: Colors.white.withOpacity(0.16),
                elevation: 0,
              )
            : null,
        endDrawer: screenWidth < 700
            ? Drawer(
                backgroundColor: const Color.fromRGBO(25, 25, 25, 1.0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(
                      menulist.length,
                      (index) {
                        return MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              _scrollToIndex(index);
                            },
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              child: AutoSizeText(
                                menulist[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )
            : null,
        body: SafeArea(
          child: screenWidth > 700
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        menulist.length,
                        (index) {
                          return MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                _scrollToIndex(index);
                              },
                              child: Container(
                                margin: const EdgeInsets.all(8),
                                child: AutoSizeText(
                                  menulist[index],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        controller: controller,
                        itemCount: list.length,
                        itemBuilder: (BuildContext context, int index) {
                          return list[index];
                        },
                      ),
                    ),
                  ],
                )
              : ListView.builder(
                  scrollDirection: Axis.vertical,
                  controller: controller,
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return list[index];
                  },
                ),
        ));
  }

  void _scrollToIndex(int index) {
    controller.animateToPage(index + 1,
        duration: const Duration(seconds: 2),
        curve: Curves.fastLinearToSlowEaseIn);
  }
}
