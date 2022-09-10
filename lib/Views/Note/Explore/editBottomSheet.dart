import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Models/Note/noteModel.dart';
import '../../../Services/Isar/mainIsar.dart';

Widget titleForm({
  required TextEditingController controller,
}) =>
    Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: 80,
            height: 10,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          TextFormField(
            cursorColor: Colors.teal,
            validator: (value) {
              if (value == null || value == "") {
                return "value can't be null";
              } else {
                return null;
              }
            },
            controller: controller,
            decoration: InputDecoration(
                errorStyle: const TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Colors.red),
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.teal),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Colors.teal),
                  borderRadius: BorderRadius.circular(15),
                ),
                label: const Text("Title"),
                labelStyle: const TextStyle(
                  color: Colors.teal,
                )),
          ),
        ],
      ),
    );

Widget descriptionForm({
  required TextEditingController controller,
}) =>
    Container(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        cursorColor: Colors.teal,
        controller: controller,
        style: const TextStyle(
          fontFamily: "verdana",
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        maxLength: 60,
        maxLines: 4,
        decoration: InputDecoration(
          hintText: "Add a Short description !",
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2.5, color: Colors.teal),
            borderRadius: BorderRadius.circular(13),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 4, color: Colors.teal),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
