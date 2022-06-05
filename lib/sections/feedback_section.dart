import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/feedback.dart';
import '../widgets/feedback section/feedback_card.dart';
import '../widgets/service section/section_title.dart';

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(
            title: "Feedback",
            subTitle: "Client’s testimonials that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          const SizedBox(height: kDefaultPadding),
          Wrap(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: kDefaultPadding,
            runSpacing: kDefaultPadding * 2,
            children: List.generate(
              feedbacks.length,
              (index) => FeedbackCard(index: index),
            ),
          ),
        ],
      ),
    );
  }
}
