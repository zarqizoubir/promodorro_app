import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_color_picker_wheel/flutter_color_picker_wheel.dart';
import 'package:flutter_color_picker_wheel/models/animation_config.dart';
import 'package:flutter_color_picker_wheel/models/button_behaviour.dart';
import 'package:spinner_date_time_picker/spinner_date_time_picker.dart';
import 'dart:developer';

import 'takeNote_widgets.dart';

class TakeNotePage extends StatefulWidget {
  const TakeNotePage({super.key});

  @override
  State<TakeNotePage> createState() => _TakeNotePageState();
}

class _TakeNotePageState extends State<TakeNotePage> {
  Color color = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "What's To be Done",
          style: TextStyle(
            fontFamily: "verdana",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        child: const Icon(
          Icons.done,
          size: 50,
        ),
      ),
      body: Column(
        children: [
          titleForm(),
          descriptionForm(),
          PlaningDateForm(
            onPress: () {
              showDialog(
                context: context,
                builder: (context) {
                  var now = DateTime.now();
                  return Dialog(
                    child: SpinnerDateTimePicker(
                      initialDateTime: now,
                      maximumDate: now.add(const Duration(days: 100)),
                      minimumDate: now.subtract(const Duration(days: 1)),
                      mode: CupertinoDatePickerMode.dateAndTime,
                      use24hFormat: true,
                      didSetTime: (value) {
                        log("did set time: $value");
                      },
                    ),
                  );
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          PeriorityForm(),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: WheelColorPicker(
              onSelect: (Color newColor) {
                setState(() {
                  color = newColor;
                });
              },
              behaviour: ButtonBehaviour.clickToOpen,
              defaultColor: color,
              animationConfig: const FanAnimationConfig(
                  animationDurationInMillisecond: 1000,
                  rayAnimationConfig: RayAnimationConfig(
                    curve: Curves.easeInQuad,
                    enabled: false,
                  ),
                  scaleAnimationConfig: ScaleAnimationConfig(
                    curve: Curves.easeInOutCubic,
                    enabled: true,
                    animationStartDelay: 0,
                    animationFinishDelay: 0.2,
                  ),
                  opacityAnimationConfig: OpacityAnimationConfig(
                    curve: Curves.linear,
                    enabled: true,
                    animationStartDelay: 0.2,
                    animationFinishDelay: 0,
                  ),
                  rotationAnimationConfig: RotationAnimationConfig(
                      curve: Curves.easeInQuad,
                      enabled: true,
                      animationFinishDelay: 0.4)),
              colorList: defaultAvailableColors,
              buttonSize: 40,
              pieceHeight: 25,
              innerRadius: 80,
            ),
          )
        ],
      ),
    );
  }
}
