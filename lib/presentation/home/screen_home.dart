import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/presentation/home/widget/background_card.dart';
import 'package:netflix_app/presentation/home/widget/number_card.dart';
import 'package:netflix_app/presentation/widgets/main_title_card.dart';
import '../../core/constants.dart';
import '../widgets/main_title.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});
  ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, value, child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ListView(
                    children: [
                      BackgroundCard(),
                      Release(
                        title: "Release in the past year",
                      ),
                      Trending(
                        title: "Trending Now",
                      ),
                      khight,
                      NumberTitleCard(),
                      TenseDrama(
                        title: "Tense Dramas",
                      ),
                      khight,
                      OnAir(
                        title: "Upcoming",
                      ),
                    ],
                  ),
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: Duration(milliseconds: 1000),
                        width: double.infinity,
                        height: 90,
                        color: Colors.black.withOpacity(0.5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  "https://www.designmantic.com/blog/wp-content/uploads/2016/07/Netflix-Revamps-Logo.jpg",
                                  width: 70,
                                  height: 70,
                                ),
                                Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                kwidth,
                                Container(
                                  width: 30,
                                  height: 20,
                                  color: Colors.blue,
                                ),
                                kwidth,
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "TV Shows",
                                  style: kHomeTitle,
                                ),
                                Text("Movies", style: kHomeTitle),
                                Text("Categories", style: kHomeTitle),
                              ],
                            )
                          ],
                        ),
                      )
                    : khight,
              ],
            ),
          );
        },
      ),
    );
  }
}

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(
          title: "Top 10 Tv Shows in India today",
        ),
        khight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => NumberCard(
                index: index,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
