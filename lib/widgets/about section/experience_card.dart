import 'package:flutter/material.dart';

import '../../../constants.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key key,
    this.numOfExp,
  }) : super(key: key);

  final String numOfExp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      height: 240,
      width: 255,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 215, 234, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 191, 221, 255),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 6,
              color: Color.fromARGB(255, 126, 126, 126).withOpacity(0.25),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 4
                      ..color = Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                    shadows: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                Text(
                  numOfExp,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: kDefaultPadding / 2),
            const Text(
              "Years of Experience",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            )
          ],
        ),
      ),
    );
  }
}
