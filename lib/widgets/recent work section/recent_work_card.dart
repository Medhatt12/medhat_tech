import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../models/recentwork.dart';

class RecentWorkCard extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCard({
    Key key,
    this.index,
    this.press,
  }) : super(key: key);

  final int index;
  final Function press;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(
                  recentWorks[widget.index].image,
                  height: 320,
                  width: 255,
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(recentWorks[widget.index].category.toUpperCase()),
                      SizedBox(height: kDefaultPadding / 2),
                      Text(
                        recentWorks[widget.index].title,
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(height: 1.5),
                      ),
                      SizedBox(height: kDefaultPadding),
                      Text(
                        "View Details",
                        style: TextStyle(decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
