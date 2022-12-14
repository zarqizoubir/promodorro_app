import 'package:app/Controllers/timer_Controller.dart';
import 'package:app/Views/Timer/setting_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'timer_widgets.dart';

import '../../Global/Widgets/mainDrawer.dart';

class TimerPage extends StatelessWidget {
  TimerPage({super.key});

  final TimerController timerController = Get.put(TimerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Promodoro Timer",
          style: TextStyle(
            fontFamily: 'verdana',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => SettingTimer());
            },
            icon: const Icon(
              Icons.settings,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          MainTimer(
            context,
            controller: timerController.countDownController,
            duration: timerController.default_work_duration,
            onFinshed: () {
              timerController.TakeRest(
                context,
                restTimer: RestTimer(
                  context,
                  controller: timerController.restController,
                  rest_duration: timerController.default_rest_duration,
                ),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          StartButton(
            context,
            OnClick: () {
              timerController.Start();
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ResetButton(
            context,
            OnClick: () {
              timerController.Reset();
            },
          ),
          const SizedBox(
            height: 10,
          ),
          StopButton(
            context,
            OnClick: () {
              timerController.Stop();
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TakeRestButton(
            context,
            OnClick: () {
              timerController.TakeRest(
                context,
                restTimer: RestTimer(
                  context,
                  controller: timerController.restController,
                  rest_duration: timerController.default_rest_duration,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
