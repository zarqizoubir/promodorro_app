import 'package:flutter/material.dart';

import 'mainPage_widgets.dart';

class NoteMainPage extends StatelessWidget {
  const NoteMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Manage Tasks',
          style: TextStyle(
            fontFamily: "bailysc",
          ),
        ),
      ),
      body: Column(
        children: [
          ExploreWidget(),
        ],
      ),
    );
  }
}
