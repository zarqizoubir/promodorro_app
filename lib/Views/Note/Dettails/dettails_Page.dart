import 'package:flutter/material.dart';

import '../../../Models/Note/noteModel.dart';

class DettailsPage extends StatefulWidget {
  final Note note;
  const DettailsPage({super.key, required this.note});

  @override
  State<DettailsPage> createState() => _DettailsPageState();
}

class _DettailsPageState extends State<DettailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.note.type,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            titleBox(),
            const SizedBox(
              height: 20,
            ),
            descritionBox(),
          ],
        ),
      ),
    );
  }

  Widget titleBox() => Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: const Text(
                "Title : ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              child: Text(
                widget.note.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      );

  Widget descritionBox() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 10, bottom: 15),
            child: Text(
              "More Info",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: Colors.teal),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Descrition : ",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    widget.note.description!,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "To do at :",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "${widget.note.plan.day.toString().padLeft(2, '0')}/${widget.note.plan.month.toString().padLeft(2, '0')}/${widget.note.plan.year}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Periority :",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          widget.note.periority!,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.red,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
