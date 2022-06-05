import 'package:flutter/material.dart';

import '../../constants.dart';

class MyOutlineButton2 extends StatelessWidget {
  const MyOutlineButton2({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding,
        horizontal: kDefaultPadding * 2.5,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: Color.fromARGB(255, 91, 94, 98),
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
