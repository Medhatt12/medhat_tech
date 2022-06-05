import 'package:flutter/material.dart';
import 'package:medhat_tech/screens/recent_work_screen.dart';
import '../screens/project_details_screen.dart';

import '../constants.dart';
import '../models/recentwork.dart';
import '../widgets/buttons/my_outline_button2.dart';
import '../widgets/recent work section/hireme_card.dart';
import '../widgets/recent work section/recent_work_card.dart';
import '../widgets/service section/section_title.dart';

class RecentWorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -72),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HireMeCard(),
            ),
          ),
          const SectionTitle(
            title: "Recent Work",
            subTitle: "My Strong Arenas",
            color: Color(0xFFFFB100),
          ),
          const SizedBox(height: kDefaultPadding * 1.5),
          SizedBox(
            //width: 1110,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                4,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RecentWorkCard(
                    index: index,
                    press: () {
                      Navigator.of(context).pushNamed(
                          ProjectDetailsScreen.routeName,
                          arguments: recentWorks[index].id);
                    },
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          MyOutlineButton2(
            text: "More Projects!",
            press: () {
              Navigator.of(context).pushNamed(RecentWorkScreen.routeName);
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
