import 'package:flutter/material.dart';

import 'glass_content.dart';

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        GlassContent(size: size),
        Image.asset(
          "assets/gifs/scroll-down.gif",
          height: 125.0,
          width: 125.0,
        ),
        const Spacer(flex: 2),
      ],
    );
  }
}
