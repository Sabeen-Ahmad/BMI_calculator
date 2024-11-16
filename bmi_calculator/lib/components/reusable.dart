import 'package:flutter/material.dart';


enum Gender{
    male,female
}
class ReusableCard extends StatelessWidget {
  const ReusableCard({
    required this.colour,
    this.cardChild,
  required this.onPress,
  }); // Updated constructor with named parameters

  final Color colour;
  final Widget? cardChild;
  final VoidCallback onPress;//ontap expects a callback

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}

// GestureDetector expects an onTap parameter, which should be a function that takes no arguments and returns void (i.e., void Function()).
