import 'package:flutter/material.dart';

Widget titleForm({
  required TextEditingController controller,
}) =>
    Container(
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
            validator: (value) {
              if (value == null || value == "") {
                return "value can't be null";
              } else {
                return null;
              }
            },
            controller: controller,
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

Widget descriptionForm({
  required TextEditingController controller,
}) =>
    Container(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
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
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
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
