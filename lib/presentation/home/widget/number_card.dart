import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/api/upcommming/func.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/search/widgets/search_idle.dart';

import '../../../core/constants.dart';

class NumberCardd extends StatelessWidget {
  const NumberCardd({required this.index, super.key});
  final int index;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getUpcomming(),
        builder: (context, snapshot) {
          return Stack(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 40,
                    height: 200,
                  ),
                  (snapshot.hasData)
                      ? Container(
                          width: 130,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: kRadius10,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  '$imageUrl${snapshot.data?[index].posterPath}'),
                            ),
                          ),
                        )
                      : const Center(child: CircularProgressIndicator())
                ],
              ),
              Positioned(
                left: 13,
                bottom: -25,
                child: BorderedText(
                  strokeColor: kwhiteColor,
                  strokeWidth: 5.0,
                  child: Text(
                    "${index + 1}",
                    style: const TextStyle(
                        color: backgroundColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 130,
                        decoration: TextDecoration.none,
                        decorationColor: Colors.red),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
