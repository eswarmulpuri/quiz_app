import 'package:flutter/material.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:quiz_app/screens/quiz/components/option.dart';

import '../../../constants.dart';

class QuestionCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)
      ),
      child: Column(
        children: [
          Text(
              sample_data[0]['question'],
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: kBlackColor)
          ),
          Option(),
          Option(),
          Option(),
          Option()
        ],
      ),
    );
  }
}