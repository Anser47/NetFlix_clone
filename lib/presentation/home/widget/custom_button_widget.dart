import 'package:flutter/cupertino.dart';

import '../../../core/colors/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.icon,
    this.iconSize = 30,
    this.textSize = 18,
    required this.title,
    super.key,
  });
  final String title;
  final IconData icon;
  final double iconSize;
  final double textSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhiteColor,
          size: iconSize,
        ),
        Text(
          title,
          style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
