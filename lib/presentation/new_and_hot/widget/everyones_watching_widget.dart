import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/domain/downloads/common_function.dart';
import 'package:netflix_app/presentation/home/widget/custom_button_widget.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  final int index;
  const EveryonesWatchingWidget({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getRelese(),
      builder: (context, snapshot) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            khight,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '${snapshot.data?[index].title}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            khight,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '${snapshot.data?[index].overview}',
                style: const TextStyle(color: kgray),
              ),
            ),
            khight50,
            VideoWidget(index: index),
            khight,
            const Row(
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
      },
    );
  }
}
