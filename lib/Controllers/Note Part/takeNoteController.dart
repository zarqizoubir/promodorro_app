import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:spinner_date_time_picker/spinner_date_time_picker.dart';

class TakeNoteController extends GetxController {
  late TextEditingController title_ctrl;
  late TextEditingController description_ctrl;

  RxInt colorValue = Colors.deepPurple.value.obs;

  // Functions

  // Brooh !!!!!

  TakeThedate(
    BuildContext context,
  ) {
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
              print("did set time: $value");
            },
          ),
        );
      },
    );
  }

  PickTheColor(Color newColor) {
    colorValue.value = newColor.value;
    update();
  }
  //  Life Cycle

  @override
  void onInit() {
    title_ctrl = TextEditingController();
    description_ctrl = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    title_ctrl.dispose();
    description_ctrl.dispose();
    super.onClose();
  }
}
