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
                  final dio = Dio();

                  dio.download(
                    "https://web.facebook.com/100051940011722/videos/800697967617920/",
                    "/home/ezzoubair/Desktop/Next/app/download/video.mp4",
                    onReceiveProgress: (count, total) {
                      print(total);
                      print(count);
                    },
                  );
                },
                child: Text("Download"),
              ),
            ],
          ),
        ));
  }
}
