import 'package:bmi/components/bottom_button.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmiResult,
      required this.textResult,
      required this.interpretation});

  final String bmiResult;
  final String textResult;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.normal),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
          child: Container(
            child: Text(
              'Your Result',
              style: KTitleTextStyle,
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: ReusableCard(
              colour: KActiveCardColor,
              carChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textResult,
                    style: KResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: KBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: KBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              onpress: () {}),
        ),
        BottomButton(
            ontap: () {
              Navigator.pop(context);
            },
            bottomTitle: 'RE- CALCULATE'),
      ]),
    );
  }
}
