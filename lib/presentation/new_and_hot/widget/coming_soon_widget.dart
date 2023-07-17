import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

import 'package:netflix_app/presentation/home/widget/custom_button_widget.dart';

import '../../widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 400,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "FEB",
                style: TextStyle(
                  color: kgray,
                  fontSize: 20,
                ),
              ),
              Text(
                "11",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              khight,
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TALL GIRL 2",
                    style: TextStyle(
                      fontSize: 35, letterSpacing: -4,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        icon: Icons.notifications,
                        title: "Remaind me",
                        iconSize: 25,
                        textSize: 12,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      CustomButton(
                        icon: Icons.info,
                        title: "Info",
                        iconSize: 25,
                        textSize: 12,
                      ),
                      kwidth,
                    ],
                  )
                ],
              ),
              khight,
              const Text("Coming on friday"),
              khight,
              const Text(
                "Tall Girl 2",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              khight,
              const Text(
                "Landing the lead in the school musical is a dream come true for Jodi, until the pressiere sends her confidence - and her relationship - into a tailspain ",
                style: TextStyle(color: kgray),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
