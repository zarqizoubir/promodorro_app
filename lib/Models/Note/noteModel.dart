import 'package:isar/isar.dart';

part 'noteModel.g.dart';

@Collection()
class Note {
  int id = Isar.autoIncrement;

  late String title;

  String? description;

  late DateTime plan;

  String? periority;

  int? tileColor;

  late String type;
}
