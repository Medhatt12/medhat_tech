import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 320, maxHeight: 640),
      child: Image.asset("assets/images/profile.png"),
    );
  }
}
