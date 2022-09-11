import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:spinner_date_time_picker/spinner_date_time_picker.dart';

import '../../Services/Isar/mainIsar.dart';
import '../../Models/Note/noteModel.dart';

class TakeNoteController extends GetxController {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  late TextEditingController title_ctrl;
  late TextEditingController description_ctrl;

  RxInt colorValue = Colors.white.value.obs;
  Rx<DateTime> date =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day)
          .obs;
  RxString periority = "none".obs;
  RxString type = "Quick".obs;
  // Functions

  Submit() async {
    var formdata = formkey.currentState;
    if (formdata!.validate()) {
      Note note = Note()
        ..tileColor = colorValue.value
        ..plan = date.value
        ..title = title_ctrl.text
        ..description = description_ctrl.text
        ..periority = periority.value
        ..type = type.value;
      await IsarMain().addData(note: note);
    } else {
      //
    }
  }
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
            maximumDate: now.add(const Duration(days: 10000)),
            minimumDate: now.subtract(const Duration(days: 1)),
            mode: CupertinoDatePickerMode.date,
            use24hFormat: true,
            didSetTime: (value) {
              print(value);
              date.value = value;
              update();
            },
          ),
        );
      },
    );
  }

  //
  PickTheColor(Color newColor) {
    colorValue.value = newColor.value;
    update();
  }

  PeriorityonChanged(dynamic val) {
    periority.value = val;
    update();
  }

  TypeonChanged(dynamic val) {
    type.value = val;
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
