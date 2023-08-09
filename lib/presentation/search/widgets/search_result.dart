import 'package:flutter/cupertino.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/domain/downloads/common_function.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';

const imageUrl =
    "https://sm.ign.com/t/ign_latam/movie/t/the-dark-k/the-dark-knight_36qc.1200.jpg";
// const imageUrl2 =
//     "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rktDFPbfHfUbArZ6OOOKsXcv0Bm.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitile(title: 'Movies & TV'),
        khight20,
        FutureBuilder(
          future: getRelese(),
          builder: (context, snapshot) {
            return Expanded(
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 220,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}'),
                          fit: BoxFit.cover),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getTrending(),
      builder: (context, snapshot) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
            ),
            borderRadius: BorderRadius.circular(7),
          ),
        );
      },
    );
  }
}
