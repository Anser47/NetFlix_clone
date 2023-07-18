import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widgets/search_idle.dart';
import 'package:netflix_app/presentation/search/widgets/search_result.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';

TextEditingController searchControllor = TextEditingController();
ValueNotifier searchScreenNotifier = ValueNotifier([]);

class ScreenSearch extends StatefulWidget {
  ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  final FocusNode _focusNode = FocusNode();
  bool isSearch = false;
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
              valueListenable: searchScreenNotifier,
              builder: (context, value, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CupertinoSearchTextField(
                      focusNode: _focusNode,
                      controller: searchControllor,
                      onChanged: (value) {
                        if (searchControllor.text.isNotEmpty) {
                          searchScreenNotifier.notifyListeners();
                          setState(() {
                            isSearch = true;
                          });
                        } else {
                          setState(() {
                            isSearch = false;
                          });
                        }
                      },
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
                        setState(() {
                          isSearch = false;
                          searchScreenNotifier.value = [];
                          searchScreenNotifier.notifyListeners();
                        });
                      },
                      style: const TextStyle(color: Colors.white),
                    ),
                    khight,
                    const SearchTextTitile(title: 'Search Result'),
                    khight,
                    (!isSearch)
                        ? const Expanded(
                            child: SearchIdleWidget(),
                          )
                        : const Expanded(
                            child: SearchResultWidget(),
                          ),
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
