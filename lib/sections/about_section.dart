import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
import '../widgets/about section/about_section_text.dart';
import '../widgets/about section/about_text_with_sign.dart';
import '../widgets/about section/experience_card.dart';
import '../widgets/buttons/default_button.dart';
import '../widgets/buttons/my_outline_button.dart';

class AboutSection extends StatelessWidget {
  void _launchURL() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'mohamedmedhatt97@gmail.com',
      query: 'subject=Inquiry',
    );
    String url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  static MediaQueryData _mediaQueryData;
  static double screenWidth;

  @override
  Widget build(BuildContext context) {
    var aboutList = [
      AboutTextWithSign(),
      AboutSectionText(
        text:
            "A passionate software engineer, Computer Science and Engineering Bachelor holder. Currently studying MSc. Game Studies and Engineering at Alpen-Adria-Universität Klagenfurt. Based in Klagenfurt, Austria",
      ),
      ExperienceCard(numOfExp: "02"),
      AboutSectionText(
        text:
            "Experience developing games using Unity, for my bachelor project I developed a game that helps in identifying learning disabilities and autism in children. After my bachelor thesis I worked as a freelance WordPress Web Developer; Developing e-commerce website. Additionally, I finished Udemy's Flutter & dart course.",
      ),
      MyOutlineButton(
        imageSrc: "assets/images/hand.png",
        text: "Hire Me!",
        press: () {
          _launchURL();
        },
      ),
      SizedBox(
        child: DefaultButton(
          imageSrc: "assets/images/download.png",
          text: "Download CV",
          press: () {
            html.window.open("assets/assets/files/CV9020.pdf", "cv");
          },
        ),
      ),
    ];
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: screenWidth > 900
            ? Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Flexible(
                        flex: 1,
                        child: AboutTextWithSign(),
                      ),
                      Flexible(
                        flex: 1,
                        //child: Expanded(
                        child: AboutSectionText(
                          text:
                              "A passionate software engineer, Computer Science and Engineering Bachelor holder. Currently studying MSc. Game Studies and Engineering at Alpen-Adria-Universität Klagenfurt. Based in Klagenfurt, Austria",
                        ),
                        // ),
                      ),
                      Flexible(
                        flex: 1,
                        child: ExperienceCard(numOfExp: "02"),
                      ),
                      Flexible(
                        flex: 1,
                        // child: Expanded(
                        child: AboutSectionText(
                          text:
                              "Experience developing games using Unity, for my bachelor project I developed a game that helps in identifying learning disabilities and autism in children. After my bachelor thesis I worked as a freelance WordPress Web Developer; Developing e-commerce website. Additionally, I finished Udemy's Flutter & dart course.",
                        ),
                        // ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyOutlineButton(
                        imageSrc: "assets/images/hand.png",
                        text: "Hire Me!",
                        press: () {
                          //HomeScreen().scrollToIndex(4);
                          _launchURL();
                        },
                      ),
                      const SizedBox(width: kDefaultPadding * 1.5),
                      DefaultButton(
                        imageSrc: "assets/images/download.png",
                        text: "Download CV",
                        press: () {
                          html.window
                              .open("assets/assets/files/CV9020.pdf", "cv");
                        },
                      ),
                    ],
                  ),
                ],
              )
            : Wrap(
                children: List.generate(
                  aboutList.length,
                  (index) {
                    return Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: aboutList[index],
                    ));
                  },
                ),
              ),
      ),
    );
  }
}
