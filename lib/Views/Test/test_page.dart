import 'package:app/Global/Widgets/mainDrawer.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import '../../Models/Note/noteModel.dart';

import '../../Global/global.dart';

import '../../Services/Isar/mainIsar.dart';

class TestPage extends StatelessWidget {
  TestPage({super.key});

  final instance = IsarMain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  List some = await instance.sortbyDate();
                  some.forEach((element) {
                    print(element.plan);
                  });
                },
                child: const Text(
                  "Tasks",
                ),
              ),
            ],
          ),
        ));
  }
}
