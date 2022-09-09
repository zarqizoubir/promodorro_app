import 'package:flutter/material.dart';

import '../../Models/Note/noteModel.dart';
import '../../Models/Enum/noteTypes.dart';

import '../../Global/global.dart';

import '../../Services/Isar/mainIsar.dart';

class TestPage extends StatelessWidget {
  TestPage({super.key});

  final instance = IsarMain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  // Note note = Note()
                  //   ..title = "test1"
                  //   ..description = "1nothing"
                  //   ..periority = "high"
                  //   ..plan = DateTime.now()
                  //   ..tileColor = Colors.red.value
                  //   ..type = "week";

                  // await instance.addData(
                  //   note: note,
                  // );

                  print(Colors.white.value);
                },
                child: Text("Add data"),
              ),
              ElevatedButton(
                onPressed: () async {
                  await instance.querydata();
                },
                child: Text("Query"),
              ),
            ],
          ),
        ));
  }
}



// for (NoteTypes type in NoteTypes.values) {
//               print(type.name);
//             }
