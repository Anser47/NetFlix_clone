import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import '../../../api/upcommming/func.dart';
import '../../../core/Strings.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // searchtittle('Top 10 tv Shows in india Today'),

        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getUpcomming(),
            builder: (context, snapshot) {
              return ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              height: 150,
                              width: 40,
                            ),
                            Container(
                              width: 150,
                              height: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      '$imageUrl${snapshot.data?[index].posterPath}'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          left: 10,
                          bottom: -26,
                          child: BorderedText(
                            strokeWidth: 6.0,
                            strokeColor: Colors.grey,
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 120,
                                decoration: TextDecoration.none,
                                decorationColor: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              );
            },
          ),
        ),
      ],
    );
  }
}
