import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  ReusableCard({required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}

class ReusableCardChild extends StatelessWidget {
  final IconData icon;
  final String gender;

  const ReusableCardChild({super.key, required this.icon, required this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          gender,
          style: kLargeText
        )
      ],
    );
  }
}

class BottomContainer extends StatelessWidget {
  final String text;
  final  onPressed;
  BottomContainer({required this.text, required this.onPressed, });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(
           text,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        height: kBottomContainerHeight,
        width: double.infinity,
        color: kBottomContainerColor,
      ),
    );
  }
}

