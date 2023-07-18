import 'package:flutter/material.dart';
import 'package:netflix_app/core/Strings.dart';
import 'package:netflix_app/domain/downloads/common_function.dart';

import '../../core/constants.dart';
import 'main_card.dart';
import 'main_title.dart';

class Release extends StatelessWidget {
  const Release({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        khight,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getRelese(),
            builder: (context, snapshot) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  10,
                  (index) => MainCard2(
                    imgString:
                        'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}',
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class Trending extends StatelessWidget {
  const Trending({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        khight,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getTrending(),
            builder: (context, snapshot) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  10,
                  (index) => MainCard2(
                    imgString:
                        'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}',
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class Top10Tv extends StatelessWidget {
  const Top10Tv({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        khight,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getTopTen(),
            builder: (context, snapshot) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  10,
                  (index) => MainCard2(
                    imgString:
                        'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}',
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class TenseDrama extends StatelessWidget {
  const TenseDrama({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        khight,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getTenseDrama(),
            builder: (context, snapshot) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  10,
                  (index) => MainCard2(
                    imgString: '$imageUrl${snapshot.data?[index].posterPath}',
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class OnAir extends StatelessWidget {
  const OnAir({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        khight,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getOnAir(),
            builder: (context, snapshot) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  10,
                  (index) => MainCard2(
                    imgString:
                        'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}',
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
