import 'package:flutter/cupertino.dart';
import 'package:netflix_app/core/constants.dart';

class MainCard2 extends StatelessWidget {
  final String imgString;
  const MainCard2({
    required this.imgString,
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
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imgString),
        ),
      ),
    );
  }
}
