import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/domain/downloads/common_function.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/5YZbUmjbMa3ClvSW1Wj3D6XGolb.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitile(title: 'Top Searchs'),
        khight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => TopSearchItemTile(index: index),
              separatorBuilder: (context, index) => khight20,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final int index;
  const TopSearchItemTile({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: getTrending(),
      builder: (context, snapshot) {
        return Row(
          children: [
            Container(
              height: 65,
              width: screenWidth * 0.35,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://image.tmdb.org/t/p/w200${snapshot.data?[index].backdropPath}'),
                ),
              ),
            ),
            kwidth,
            Expanded(
              child: Text(
                '${snapshot.data?[index].title}',
                style: const TextStyle(
                    color: kwhiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            const CircleAvatar(
              backgroundColor: kwhiteColor,
              radius: 23,
              child: Icon(
                CupertinoIcons.play_circle_fill,
                color: backgroundColor,
              ),
            )
          ],
        );
      },
    );
  }
}
