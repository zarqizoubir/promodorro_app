import 'package:flutter/material.dart';

Widget titleForm() => Container(
      padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Add a title : ",
            style: TextStyle(
              fontFamily: "verdana",
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              label: const Text("Title"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );

Widget descriptionForm() => Container(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        style: const TextStyle(
          fontFamily: "verdana",
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        maxLength: 60,
        maxLines: 4,
        decoration: InputDecoration(
          hintText: "Add a Short description !",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );

Widget PlaningDateForm({
  required Function()? onPress,
}) {
  DateTime date = DateTime.now();
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "${date.day.toString().padLeft(2, '0')} / ${date.month.toString().padLeft(2, '0')} / ${date.year}",
          style: const TextStyle(
            fontFamily: "verdana",
            fontSize: 18,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: MaterialButton(
            color: Colors.blue,
            onPressed: onPress,
            child: const Text(
              'Plan',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget PeriorityForm() {
  String? value;

  return Container(
    margin: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Text("High"),
            Radio(
                value: "High",
                groupValue: value,
                onChanged: (value) {
                  value = value;
                }),
          ],
        ),
        Row(
          children: [
            Text("Medium"),
            Radio(
                value: "Medium",
                groupValue: value,
                onChanged: (value) {
                  value = value;
                }),
          ],
        ),
        Row(
          children: [
            Text("Low"),
            Radio(
                value: "Low",
                groupValue: value,
                onChanged: (value) {
                  value = value;
                }),
          ],
        ),
        Row(
          children: [
            Text("none"),
            Radio(
                value: "none",
                groupValue: value,
                onChanged: (value) {
                  value = value;
                }),
          ],
        ),
      ],
    ),
  );
}
