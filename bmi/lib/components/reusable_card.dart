import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key,
      required this.colour,
      required this.carChild,
      required this.onpress});
  final Color colour;
  final Widget carChild;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress as void Function(),  // if you only use the function name it doesn't work for you so add these keywords by saying this is a function with no argument and not returning value;
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: carChild,
      ),
    );
  }
}
