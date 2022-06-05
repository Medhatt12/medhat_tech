import 'package:flutter/material.dart';
import 'package:medhat_tech/screens/project_details_screen.dart';

import '../constants.dart';
import '../models/recentwork.dart';
import '../widgets/buttons/my_outline_button2.dart';
import '../widgets/recent work section/recent_work_card.dart';

class RecentWorkScreen extends StatelessWidget {
  //const ProductDetailsScreen({ Key? key }) : super(key: key);
  static const routeName = '/recent-work-screen';

  static MediaQueryData _mediaQueryData;
  static double screenWidth;

  @override
  Widget build(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(25, 25, 25, 1.0),
      appBar: AppBar(
        title: const Text('Recent Work'),
        backgroundColor: const Color.fromRGBO(25, 25, 25, 1.0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: screenWidth > 1100
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 5 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: recentWorks.length,
                itemBuilder: (BuildContext ctx, index) {
                  return RecentWorkCard(
                    index: index,
                    press: () {
                      Navigator.of(context).pushNamed(
                          ProjectDetailsScreen.routeName,
                          arguments: recentWorks[index].id);
                    },
                  );
                },
              )
            : ListView.builder(
                itemCount: recentWorks.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RecentWorkCard(
                      index: index,
                      press: () {
                        Navigator.of(context).pushNamed(
                            ProjectDetailsScreen.routeName,
                            arguments: recentWorks[index].id);
                      },
                    ),
                  );
                },
              ),
      ),
    );
  }
}
