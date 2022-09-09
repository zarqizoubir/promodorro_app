import 'dart:io';
import 'package:path_provider/path_provider.dart';

class Global {
  // Isar Storage Path///////////////////////////////////
  static Future<String> mainPath() async {
    final dir = await getApplicationDocumentsDirectory();
    String path = "${dir.path}/PromoDorro";
    return path;
  }
}
