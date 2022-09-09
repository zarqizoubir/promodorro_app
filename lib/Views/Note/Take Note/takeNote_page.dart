import 'package:app/Controllers/Note%20Part/takeNoteController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_color_picker_wheel/flutter_color_picker_wheel.dart';
import 'package:flutter_color_picker_wheel/models/animation_config.dart';
import 'package:flutter_color_picker_wheel/models/button_behaviour.dart';
import 'package:get/get.dart';

import 'takeNote_widgets.dart';

class TakeNotePage extends StatefulWidget {
  const TakeNotePage({super.key});

  @override
  State<TakeNotePage> createState() => _TakeNotePageState();
}

class _TakeNotePageState extends State<TakeNotePage> {
  final TakeNoteController takeNoteController = Get.put(TakeNoteController());

  // Color color = Colors.deepPurple;

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
          Obx(
            () => TypeForm(
              value: takeNoteController.type.value,
              onChanged: takeNoteController.TypeonChanged,
            ),
          ),
          Form(
            key: takeNoteController.formkey,
            child: titleForm(
              controller: takeNoteController.title_ctrl,
            ),
          ),
          descriptionForm(
            controller: takeNoteController.description_ctrl,
          ),
          Obx(
            () => PlaningDateForm(
              date: takeNoteController.date.value,
              onPress: () {
                takeNoteController.TakeThedate(context);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Obx(
            () => PeriorityForm(
              value: takeNoteController.periority.value,
              onChanged: takeNoteController.PeriorityonChanged,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Obx(
            () => Container(
              child: WheelColorPicker(
                onSelect: takeNoteController.PickTheColor,
                behaviour: ButtonBehaviour.clickToOpen,
                defaultColor: Color(takeNoteController.colorValue.value),
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
            ),
          ),
        ],
      ),
    );
  }
}
