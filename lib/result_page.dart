import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusableWidget.dart';


class ResultPage extends StatelessWidget {

  final String? bmiResult;
  final String resultText;
  final String interpretation;
  const ResultPage({Key? key, required this.bmiResult, required this.resultText, required this.interpretation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 10,left: 8),
                alignment: Alignment.bottomLeft,
                child: Text(
                    'Your Result',
                  style: kTitleTextStyle,
                ),
              ),),
          Expanded(
            flex: 5,
              child: Container(
                color: kActiveColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: kResultTextStyle,
                    ),
                    Text(
                        bmiResult!,
                      textAlign: TextAlign.center,
                      style: kNumberText,
                    ),
                    Text(
                        interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    )
                  ],
                ),
              ),),
          BottomContainer(text: 'RE-CALCULATE',onPressed: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
