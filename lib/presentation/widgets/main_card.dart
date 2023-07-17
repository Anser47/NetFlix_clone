import 'package:flutter/cupertino.dart';
import 'package:netflix_app/core/constants.dart';

class MainCard2 extends StatelessWidget {
  const MainCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://image.tmdb.org/t/p/original/sxeZgvv6mLZeGQMK1rvK3hw2W07.jpg'),
        ),
      ),
    );
  }
}
