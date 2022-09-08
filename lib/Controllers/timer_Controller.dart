import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class TimerController extends GetxController {
  late CountDownController countDownController;
  late CountDownController restController = CountDownController();
  // Variables

  int default_work_duration = 1500;
  int default_rest_duration = 300;

  //  Functions

  Start() {
    if (countDownController.isPaused) {
      countDownController.resume();
    } else {
      countDownController.start();
    }
  }

  Reset() {
    countDownController.reset();
  }

  Stop() {
    countDownController.pause();
  }

  TakeRest(
    BuildContext context, {
    required Widget restTimer,
  }) {
    countDownController.reset();
    Get.defaultDialog(
      title: "Take a Breath",
      titleStyle: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
      content: restTimer,
      cancel: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          fixedSize: const Size(300, 40),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text(
          "Cancel",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  //  Life Cycle

  @override
  void onInit() {
    countDownController = CountDownController();
    super.onInit();
  }
}
