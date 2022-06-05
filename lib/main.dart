import 'package:flutter/material.dart';
import 'package:medhat_tech/screens/home_screen.dart';
import 'package:medhat_tech/screens/project_details_screen.dart';
import 'package:medhat_tech/screens/recent_work_screen.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MEDHAT TECH',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   inputDecorationTheme: kDefaultInputDecorationTheme,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.light,
      home: HomeScreen(),
      routes: {
        ProjectDetailsScreen.routeName: (ctx) => ProjectDetailsScreen(),
        RecentWorkScreen.routeName: (ctx) => RecentWorkScreen(),
      },
    );
  }
}
