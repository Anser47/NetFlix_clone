import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widgets/search_idle.dart';
import 'package:netflix_app/presentation/search/widgets/search_result.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';

TextEditingController searchControllor = TextEditingController();
ValueNotifier searchScreenNotofier = ValueNotifier([]);

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});
  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusNode.unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ValueListenableBuilder(
              valueListenable: searchScreenNotofier,
              builder: (context, value, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CupertinoSearchTextField(
                      backgroundColor: Colors.grey.withOpacity(0.4),
                      prefixIcon: const Icon(
                        CupertinoIcons.search,
                        color: Colors.grey,
                      ),
                      suffixIcon: const Icon(
                        CupertinoIcons.xmark_circle_fill,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        searchControllor.clear();
                      },
                      style: const TextStyle(color: Colors.white),
                    ),
                    khight,
                    const SearchTextTitile(title: 'Search Result'),
                    khight,
                    (searchControllor.text.isEmpty)
                        ? const Expanded(
                            child: SearchIdleWidget(),
                          )
                        : const Expanded(child: SearchResultWidget()),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
