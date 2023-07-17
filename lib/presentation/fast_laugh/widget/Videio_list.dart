import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.4),
                  radius: 25,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_off,
                      color: kwhiteColor,
                      size: 30,
                    ),
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://sm.ign.com/t/ign_latam/movie/t/the-dark-k/the-dark-knight_36qc.1200.jpg"),
                      ),
                    ),
                    VideoActionsWidge(icon: Icons.emoji_emotions, title: 'Lol'),
                    VideoActionsWidge(icon: Icons.add, title: 'My List'),
                    VideoActionsWidge(icon: Icons.share, title: 'Share'),
                    VideoActionsWidge(icon: Icons.play_arrow, title: 'My List'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidge extends StatelessWidget {
  final IconData icon;
  final String title;

  const VideoActionsWidge({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(color: kwhiteColor, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
