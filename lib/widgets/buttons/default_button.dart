import 'package:flutter/material.dart';

import '../../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.imageSrc,
    this.text,
    this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding,
        horizontal: kDefaultPadding * 2.5,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: const Color.fromARGB(255, 178, 214, 255),
      onPressed: press,
      child: Row(
        children: [
          Image.asset(imageSrc, height: 40),
          const SizedBox(width: kDefaultPadding),
          Text(text),
        ],
      ),
    );
  }
}
