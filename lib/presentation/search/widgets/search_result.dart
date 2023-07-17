import 'package:flutter/cupertino.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';

const imageUrl =
    "https://sm.ign.com/t/ign_latam/movie/t/the-dark-k/the-dark-knight_36qc.1200.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchTextTitile(title: 'Movies & TV'),
        khight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1.2 / 1.4,
            children: List.generate(20, (index) => MainCard()),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
        ),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
