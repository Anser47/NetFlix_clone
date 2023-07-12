import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});
  final _widgetList = [const _SmartDownloads(), Section2(), const Section3()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            child: AppBarWidget(
              title: "Downloads",
            ),
            preferredSize: Size.fromHeight(50)),
        body: ListView.separated(
            padding: EdgeInsets.all(10),
            itemBuilder: (context, index) => _widgetList[index],
            separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
            itemCount: _widgetList.length),
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  List<String> imageList = [
    'https://sm.ign.com/t/ign_latam/movie/t/the-dark-k/the-dark-knight_36qc.1200.jpg',
    'https://i.pinimg.com/originals/8a/84/8b/8a848b9f2b7fb580193da613c4a16819.jpg',
    'https://image.tmdb.org/t/p/original/aOIuZAjPaRIE6CMzbazvcHuHXDc.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        khight,
        Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kwhiteColor,
            fontSize: 35,
          ),
        ),
        khight,
        const Text(
          "We will download a personalised selection of\nmovies and shows for you, so there is always\nsomthing to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  radius: size.width * 0.4,
                ),
              ),
              DownloadsImageWidget(
                imageList: imageList[0],
                margin: EdgeInsets.only(left: 180, top: 50),
                angle: 28,
                size: Size(size.width * 0.35, size.width * 0.55),
              ),
              DownloadsImageWidget(
                imageList: imageList[1],
                margin: EdgeInsets.only(right: 170, top: 50),
                angle: -25,
                size: Size(size.width * 0.4, size.width * 0.6),
              ),
              DownloadsImageWidget(
                imageList: imageList[2],
                margin: EdgeInsets.only(bottom: 10, top: 40),
                size: Size(size.width * 0.5, size.width * 0.65),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kbuttonColor,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Set up",
                style: TextStyle(
                    color: kwhiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        khight,
        MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          color: kwhiteColor,
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "See what you can download",
              style: TextStyle(
                  color: backgroundColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.0, top: 10),
          child: Icon(
            Icons.settings,
            color: kwhiteColor,
          ),
        ),
        kwidth,
        Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text("Smart Downloads"),
        ),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    this.angle = 0,
    required this.imageList,
    required this.margin,
    required this.size,
    this.radius = 10,
  });
  final double angle;
  final String imageList;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imageList,
                ),
              ),
              color: backgroundColor),
        ),
      ),
    );
  }
}
