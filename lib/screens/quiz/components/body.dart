import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:quiz_app/screens/quiz/components/progress_bar.dart';
import 'package:quiz_app/screens/quiz/components/question_card.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: ProgressBar(),
                  ),
                  SizedBox(height: kDefaultPadding),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text.rich(
                        TextSpan(
                          text: "Question 1",
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(color: kSecondaryColor),
                          children: [
                            TextSpan(
                              text: "/10",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(color: kSecondaryColor)
                            )
                          ]
                        )
                    ),
                  ),
                  Divider(thickness: 1.5),
                  SizedBox(height: kDefaultPadding),
                  Expanded(
                      child: PageView.builder(
                        itemCount: _questionController.question.length,
                          itemBuilder: (context, index) => QuestionCard(
                            question: _questionController.question[index],
                          )
                      )
                  )
                ],
              ),
            ),
          )
        ]
    );
  }
}
