import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Dettails/dettails_Page.dart';

import '../../../Models/Note/noteModel.dart';
import '../../../Controllers/Note Part/exploreAllController.dart';
import '../../../Services/Isar/mainIsar.dart';

class ExplorePage extends StatefulWidget {
  ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final ExploreAllController exploreAllController =
      Get.put(ExploreAllController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "All Your Tasks",
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.calendar_month_outlined)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort),
          ),
        ],
      ),
      body: FutureBuilder(
        future: exploreAllController.getAllNote(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            List<Note> data = snapshot.data;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return tasksListtile(
                  onLongPress: () {
                    Get.defaultDialog(
                      content: Column(),
                      title: "Delete confirmation",
                      titleStyle: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w800,
                      ),
                      actions: [
                        MaterialButton(
                          color: Colors.red,
                          onPressed: () async {
                            await IsarMain().deleteRecord(data[index].id);
                            setState(() {});
                            Navigator.of(context).pop();
                          },
                          child: Text("Delete"),
                        ),
                        MaterialButton(
                          color: Colors.green,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Cancel"),
                        ),
                      ],
                    );
                  },
                  note: data[index],
                  onTap: () {
                    Get.to(() => DettailsPage(note: data[index]));
                  },
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Widget tasksListtile({
    required Function()? onTap,
    required Note note,
    required Function()? onLongPress,
  }) {
    Color leadingcolor = Colors.black;
    switch (note.type) {
      case "Work":
        leadingcolor = Colors.red;
        break;
      case "Study":
        leadingcolor = Colors.teal;
        break;
      case "Daily":
        leadingcolor = Colors.blue;
        break;
      case "Weekly":
        leadingcolor = Colors.green;
        break;
      case "Quick":
        leadingcolor = Colors.brown;
        break;
    }
    DateTime date = note.plan;
    return Container(
      margin: const EdgeInsets.all(3),
      child: ListTile(
        onLongPress: onLongPress,
        leading: Text(
          note.type,
          style: TextStyle(
            color: leadingcolor,
            fontSize: 15,
            fontWeight: FontWeight.w900,
          ),
        ),
        trailing: Text(
            "${date.day.toString().padLeft(2, '0')} / ${date.month.toString().padLeft(2, '0')} / ${date.year}"),
        onTap: onTap,
        tileColor: Colors.white,
        title: Text(
          note.title,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
