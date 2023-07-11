import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Text(
          "Download",
        ),
        Spacer(),
        Icon(
          Icons.cast,
          color: Colors.white,
        ),
        kwidth,
        Container(
          width: 30,
          height: 20,
          color: Colors.blue,
        ),
        kwidth,
      ],
    );
  }
}
