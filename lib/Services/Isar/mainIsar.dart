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

  Future<List<Note>> querydata() async {
    return await MainInstance!.txn((isar) async {
      final data = await isar.notes.where().findAll();
      return data;
    });
  }

  Future deleteRecord(int id) async {
    await MainInstance!.writeTxn((isar) async {
      isar.notes.delete(id);
    });
  }

  // The Filter Part

  Future<List<Note>> getTodayTasks() async {
    DateTime now = DateTime.now();
    DateTime today = DateTime(now.year, now.month, now.day);
    return await MainInstance!.txn((isar) async {
      final todayTasks =
          await isar.notes.where().filter().planEqualTo(today).findAll();
      return todayTasks;
    });
  }

  Future<List<Note>> getCategory(String category) async {
    return await MainInstance!.txn((isar) async {
      final categoryTasks =
          await isar.notes.where().filter().typeEqualTo(category).findAll();
      return categoryTasks;
    });
  }

  // Sort The Data

  Future sortbyDate({bool isAsc = true}) async {
    return await MainInstance!.txn((isar) async {
      if (isAsc) {}
    });
  }
}
