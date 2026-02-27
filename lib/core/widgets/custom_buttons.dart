import 'package:flutter/material.dart';
import 'package:fruit_market/core/constants.dart';

class CustomButtons extends StatelessWidget {
  CustomButtons({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.circular(6),
      ),

      child: Center(
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 19,
            color: Color(0xffffffff),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
