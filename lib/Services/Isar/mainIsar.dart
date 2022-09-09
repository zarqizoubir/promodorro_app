import 'dart:developer';
import 'package:app/Models/Note/noteModel.dart';
import 'package:isar/isar.dart';
import '../../Global/global.dart';

class IsarMain {
  Isar? MainInstance = Isar.getInstance("notes");

  Future init() async {
    final path = await Global.mainPath();
    final isar = await Isar.open(
      schemas: [NoteSchema],
      directory: path,
      name: "notes",
    );
    log("Isar Initilized with Succes", name: "Main Isar");
  }

  Future addData({
    required Note note,
  }) async {
    await MainInstance?.writeTxn((isar) async {
      await isar.notes.put(note);
    });
    log("added with succes", name: "Main Isar");
  }

  Future querydata() async {
    MainInstance!.txn((isar) async {
      final data = await isar.notes.where().findAll();
      data.forEach((element) {
        print(element.type);
      });
    });
  }
}
