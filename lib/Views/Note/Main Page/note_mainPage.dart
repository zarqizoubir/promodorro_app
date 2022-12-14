import 'package:app/Views/Note/Take%20Note/takeNote_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mainPage_widgets.dart';

import '../../../Global/Widgets/mainDrawer.dart';
import '../../../Services/Isar/mainIsar.dart';
import '../../../Models/Note/noteModel.dart';
import '../Explore/exploreTasks_page.dart';

class NoteMainPage extends StatelessWidget {
  const NoteMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
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
        onPressed: () {
          Get.to(() => TakeNotePage());
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          ExploreWidget(
            context,
            ontap: () {
              Get.to(() => ExplorePage());
            },
          ),
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
          FutureBuilder(
            future: IsarMain().getTodayTasks(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                List<Note> data = snapshot.data;
                if (data.length >= 4) {
                  List<Note> newList = [];
                  data.shuffle();
                  for (var i = 0; i <= 3; i++) {
                    newList.add(data[i]);
                  }
                  return TodayTasks(
                    notes: newList,
                  );
                } else {
                  return TodayTasks(notes: data);
                }
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
