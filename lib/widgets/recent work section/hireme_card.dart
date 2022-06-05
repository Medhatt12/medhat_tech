import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';
import '../buttons/default_button.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key key,
  }) : super(key: key);

  static MediaQueryData _mediaQueryData;
  static double screenWidth;

  @override
  Widget build(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
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

    return Container(
      padding: EdgeInsets.all(kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow],
      ),
      child: screenWidth > 700
          ? Row(
              children: [
                Image.asset(
                  "assets/images/email.png",
                  height: 80,
                  width: 80,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: SizedBox(
                    height: 80,
                    child: VerticalDivider(),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Starting New Project?",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 42, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      AutoSizeText(
                        "Get an estimate for the new project",
                        // maxLines: 4,
                        style: TextStyle(fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                ),
                DefaultButton(
                  text: "Hire Me!",
                  imageSrc: "assets/images/hand.png",
                  press: () {
                    _launchURL();
                  },
                )
              ],
            )
          : Column(
              children: [
                Image.asset(
                  "assets/images/email.png",
                  height: 80,
                  width: 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(),
                ),
                AutoSizeText(
                  "Starting New Project?",
                  maxLines: 2,
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: kDefaultPadding / 2),
                AutoSizeText(
                  "Get an estimate for the new project",
                  // maxLines: 4,
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(),
                ),
                DefaultButton(
                  text: "Hire Me!",
                  imageSrc: "assets/images/hand.png",
                  press: () {
                    _launchURL();
                  },
                )
              ],
            ),
    );
  }
}
