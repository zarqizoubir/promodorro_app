import 'package:get/get.dart';
import '../../Models/Note/noteModel.dart';
import '../../Services/Isar/mainIsar.dart';

class ExploreAllController extends GetxController {
  final isarIns = IsarMain();
  getAllNote() async {
    List<Note> notes = await isarIns.querydata();
    return notes;
  }
}
