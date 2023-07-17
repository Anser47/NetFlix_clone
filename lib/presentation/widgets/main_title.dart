import 'package:flutter/cupertino.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({required this.title, super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
