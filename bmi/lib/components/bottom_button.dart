import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key, required this.ontap, required this.bottomTitle});

  final Function ontap;
  final String bottomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap as void Function(),
      child: Container(
        color: KBottomContainerColor,
        width: double.infinity,
        height: 80.0,
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Center(
          child: Text(
            bottomTitle,
            style: KLargeTextStyle,
          ),
        ),
      ),
    );
  }
}
