import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_widgets.dart';
import '../Note/Main Page/note_mainPage.dart';
import '../Timer/timer_page.dart';
import '../../Global/Widgets/mainDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home Page",
          style: TextStyle(
            fontFamily: "verdana",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          TasksManager(onTap: () {
            Get.to(() => NoteMainPage());
          }),
          const SizedBox(
            height: 10,
          ),
          PromodoroManager(onTap: () {
            Get.to(() => TimerPage());
          }),
        ],
      ),
    );
  }
}
