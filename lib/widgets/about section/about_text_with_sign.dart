import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          "ABOUT \nME",
          maxLines: 2,
          style: Theme.of(context)
              .textTheme
              .headline2
              .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        // Image.asset("assets/images/sign.png")
      ],
    );
  }
}
