import 'package:bmi_calculator/components/reusable.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/Bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key,
    required this.bmiResults,
    required this.interpretation,
    required this.resultText});
final String ? bmiResults;
final String resultText;
final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: const Text("BMI calculator"),
  centerTitle: true,
),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child:
            const Center(child: Text('Your Result',style: TitleTextStyle,)),
          )),
          Expanded(
              flex: 5,
              child:ReusableCard(colour: activeCardColor,
    onPress: (){},
    cardChild: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(resultText.toUpperCase(),style: ResultTextStyle,),
      Text(bmiResults!,style: labelresultText,),
      Text(interpretation,style: labelBodyText,
      textAlign: TextAlign.center,)
    ],
    ),
    )

            ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonTitle: 'RE-CALCULATE')
         ], )
    );


  }
}
