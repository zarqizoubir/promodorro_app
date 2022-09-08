import 'package:flutter/material.dart';

Widget TasksManager() => Container(
      margin: const EdgeInsets.all(5),
      width: double.maxFinite,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {},
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.note,
                size: 150,
                color: Colors.amber,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Notes",
                    style: TextStyle(
                      fontFamily: "albas",
                      fontSize: 50,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  "Manage Your Tasks !",
                  style: TextStyle(
                    fontFamily: "verdana",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );

Widget PromodoroManager({
  required Function()? onTap,
}) =>
    Container(
      margin: const EdgeInsets.all(5),
      width: double.maxFinite,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.timelapse,
                size: 150,
                color: Colors.red,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Timer",
                    style: TextStyle(
                      fontFamily: "albas",
                      fontSize: 50,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  "Time to Focus on Work !",
                  style: TextStyle(
                    fontFamily: "verdana",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
