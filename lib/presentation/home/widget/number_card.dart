import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

import '../../../core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({required this.index, super.key});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://image.tmdb.org/t/p/original/sxeZgvv6mLZeGQMK1rvK3hw2W07.jpg'),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 13,
          bottom: -25,
          child: BorderedText(
            strokeColor: kwhiteColor,
            strokeWidth: 5.0,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                  color: backgroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 130,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
