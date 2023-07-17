import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widget/custom_button_widget.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        khight,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Friends",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        khight,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "This hit sitcom follows the merry misadventaures of six\n20-something pals as they navigate the pitfalls of work,\nlife and love in 1990s Manhattan.",
            style: TextStyle(color: kgray),
          ),
        ),
        khight50,
        VideoWidget(),
        khight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.send,
              title: "Remaind me",
              iconSize: 25,
              textSize: 12,
            ),
            kwidth,
            CustomButton(
              icon: Icons.add,
              title: "My List",
              iconSize: 27,
              textSize: 12,
            ),
            kwidth,
            CustomButton(
              icon: Icons.play_arrow,
              title: "Play",
              iconSize: 27,
              textSize: 12,
            ),
            kwidth,
          ],
        )
      ],
    );
  }
}
