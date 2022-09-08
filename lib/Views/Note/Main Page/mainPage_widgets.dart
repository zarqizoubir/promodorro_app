// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:awesome_extensions/awesome_extensions.dart';

Widget ExploreWidget(
  BuildContext context,
) =>
    Container(
      padding: const EdgeInsets.all(30),
      width: double.maxFinite,
      child: Center(
        child: Container(
          height: 100,
          width: context.width * 0.65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 20, 43, 143),
          ),
          child: InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.explore_outlined,
                  size: 90,
                  color: Colors.teal,
                ),
                const Text(
                  "Explore",
                  style: TextStyle(
                    fontFamily: "Albas",
                    fontSize: 30,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );

Widget mainSlider() => Container(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SliderItem(label: "Work", color: Colors.red),
            SliderItem(label: "Study", color: Colors.deepPurple),
            SliderItem(label: "Dialy", color: Colors.deepOrange),
            SliderItem(label: "Week", color: Colors.blue),
            SliderItem(label: "Quick", color: Colors.brown[200]!),
          ],
        ),
      ),
    );

Widget SliderItem({
  required String label,
  required Color color,
}) =>
    Container(
      margin: const EdgeInsets.only(right: 20, left: 30),
      height: 100,
      width: 220,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(3, 7),
            blurRadius: 7,
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$label Tasks",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "verdana",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: MaterialButton(
                color: Color.fromARGB(255, 190, 8, 39),
                child: Text(
                  "Check out",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );

Widget TodayTasks() => Container(
      width: double.maxFinite,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            today(),
            tasks(),
          ],
        ),
      ),
    );

Widget today() {
  DateTime date = DateTime.now();
  return Container(
    padding: EdgeInsets.only(top: 10),
    child: Text(
      "Today is : ${date.day.toString().padLeft(2, '0')} / ${date.month.toString().padLeft(2, '0')} / ${date.year}",
      style: TextStyle(
        fontFamily: "albas",
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget tasks() => ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.all(3),
            child: ListTile(
              title: Text("Task ${index + 1}"),
              onTap: () {},
            ),
          ),
        );
      },
    );
