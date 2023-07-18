import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widget/coming_soon_widget.dart';
import 'widget/everyones_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBar(
              title: const Text(
                'New & Hot',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                  size: 30,
                ),
                kwidth,
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.blue,
                ),
                kwidth,
              ],
              bottom: TabBar(
                  labelColor: backgroundColor,
                  unselectedLabelColor: kwhiteColor,
                  isScrollable: true,
                  labelStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  indicator: BoxDecoration(
                      color: kwhiteColor, borderRadius: kRadius30),
                  tabs: const [
                    Tab(
                      text: "🍿 Coming Soon",
                    ),
                    Tab(
                      text: "👀 Everyone's watching",
                    ),
                  ]),
            ),
          ),
          body: TabBarView(
            children: [
              _buildComingSoon(),
              _buildEveryonesWatching(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildEveryonesWatching() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) => EveryonesWatchingWidget(index: index),
  );
}

Widget _buildComingSoon() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (BuildContext context, index) =>
        ComingSoonWidget(index: index),
  );
}
