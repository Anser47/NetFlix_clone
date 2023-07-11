import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  const ScreenDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          child: AppBarWidget(), preferredSize: Size.fromHeight(50)),
      body: Center(
        child: Text('Screen download'),
      ),
    );
  }
}
