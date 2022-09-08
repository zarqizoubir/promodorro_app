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
            fontFamily: "verdana",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          ExploreWidget(context),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30),
            width: double.maxFinite,
            child: const Text(
              "Quick Access : ",
              style: TextStyle(
                color: Colors.teal,
                fontFamily: "astronau",
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          mainSlider(),
          const SizedBox(
            height: 10,
          ),
          TodayTasks(),
        ],
      ),
    );
  }
}
