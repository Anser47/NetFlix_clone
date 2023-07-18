import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/domain/downloads/common_function.dart';

class VideoWidget extends StatelessWidget {
  final int index;
  const VideoWidget({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getRelese(),
      builder: (context, snapshot) {
        return Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.network(
                'https://image.tmdb.org/t/p/w200${snapshot.data?[index].backdropPath}',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.4),
                radius: 22,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.volume_off,
                    color: kwhiteColor,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
