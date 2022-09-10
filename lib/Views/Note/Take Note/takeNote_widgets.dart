import 'package:flutter/material.dart';

Widget titleForm({
  required TextEditingController controller,
}) =>
    Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Add a title : ",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            height: 15,
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

Widget PlaningDateForm({
  required Function()? onPress,
  required DateTime date,
}) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "${date.day.toString().padLeft(2, '0')} / ${date.month.toString().padLeft(2, '0')} / ${date.year}",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: MaterialButton(
            color: Colors.teal,
            onPressed: onPress,
            child: const Text(
              'Plan this Task',
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

Widget PeriorityForm({
  required String value,
  required Function(dynamic val) onChanged,
}) {
  List<String> values = [
    "High",
    "Medium",
    "Low",
    "none",
  ];
  List<Color> colors = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.grey,
  ];
  return Container(
    margin: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (var i = 0; i <= colors.length - 1; i++)
          Row(
            children: [
              Text(
                values[i],
                style: TextStyle(
                  color: colors[i],
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Radio(
                activeColor: colors[i],
                value: values[i],
                groupValue: value,
                onChanged: onChanged,
              )
            ],
          ),
      ],
    ),
  );
}

Widget TypeForm({
  required String value,
  required Function(dynamic val) onChanged,
}) {
  List<String> values = [
    "Work",
    "Study",
    "Daily",
    "Weekly",
    "Quick",
  ];
  return Container(
    margin: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (var i = 0; i <= values.length - 1; i++)
          Column(
            children: [
              Text(
                values[i],
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Radio(
                value: values[i],
                groupValue: value,
                onChanged: onChanged,
              )
            ],
          ),
      ],
    ),
  );
}
