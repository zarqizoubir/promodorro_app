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
            SliderItem(label: "Work"),
          ],
        ),
      ),
    );

Widget SliderItem({
  required String label,
}) =>
    Container(
      margin: const EdgeInsets.only(right: 20, left: 30),
      height: 100,
      width: 220,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(3, 10),
            blurRadius: 5,
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
