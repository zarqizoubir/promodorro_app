import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:awesome_extensions/awesome_extensions.dart';

Widget MainTimer(
  BuildContext context, {
  required CountDownController controller,
  required int duration,
  required Function()? onFinshed,
}) =>
    Container(
      padding: const EdgeInsets.all(30),
      child: CircularCountDownTimer(
        onComplete: onFinshed,
        controller: controller,
        width: context.width,
        height: context.height * 0.35,
        duration: duration,
        fillColor: Colors.orange.withOpacity(0.8),
        fillGradient: const RadialGradient(
          colors: [
            Colors.orange,
            Colors.red,
            Colors.blue,
          ],
        ),
        strokeWidth: 30,
        strokeCap: StrokeCap.round,
        ringColor: Colors.grey,
        textStyle: const TextStyle(
          fontFamily: "albas",
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        autoStart: false,
      ),
    );

Widget StartButton(
  BuildContext context, {
  required Function()? OnClick,
}) =>
    Container(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue.withOpacity(0.8),
            fixedSize: Size(context.width * 0.8, 40),
          ),
          onPressed: OnClick,
          child: const Text(
            "Start",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )),
    );

Widget ResetButton(
  BuildContext context, {
  required Function()? OnClick,
}) =>
    Container(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            fixedSize: Size(context.width * 0.8, 40),
          ),
          onPressed: OnClick,
          child: const Text(
            "Reset Counter",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )),
    );

Widget StopButton(
  BuildContext context, {
  required Function()? OnClick,
}) =>
    Container(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            fixedSize: Size(context.width * 0.8, 40),
          ),
          onPressed: OnClick,
          child: const Text(
            "Stop",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )),
    );

Widget TakeRestButton(
  BuildContext context, {
  required Function()? OnClick,
}) =>
    Container(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            fixedSize: Size(context.width * 0.8, 40),
          ),
          onPressed: OnClick,
          child: const Text(
            "Take A Rest",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )),
    );

Widget RestTimer(
  BuildContext context, {
  required CountDownController controller,
  required int rest_duration,
}) =>
    Container(
      padding: const EdgeInsets.all(30),
      child: CircularCountDownTimer(
        onComplete: () {
          Navigator.of(context).pop();
        },
        controller: controller,
        width: context.width,
        height: context.height * 0.35,
        duration: rest_duration,
        fillColor: Colors.orange.withOpacity(0.8),
        fillGradient: const RadialGradient(
          colors: [
            Colors.orange,
            Colors.red,
          ],
        ),
        strokeWidth: 30,
        strokeCap: StrokeCap.round,
        ringColor: Colors.grey,
        textStyle: const TextStyle(
          fontFamily: "albas",
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        autoStart: true,
      ),
    );
