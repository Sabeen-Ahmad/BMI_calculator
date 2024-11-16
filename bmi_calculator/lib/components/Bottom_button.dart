import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:flutter/material.dart';
class BottomButton extends StatelessWidget {
  const BottomButton({super.key,required this.onTap,required this.buttonTitle});
  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        onTap;
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          buttonTitle,
          style: labelTextStyle.copyWith(fontSize: 25),
        ),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}
