import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/list_notifier.dart';

import 'home_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          TasksManager(),
          const SizedBox(
            height: 10,
          ),
          PromodoroManager(),
        ],
      ),
    );
  }
}
