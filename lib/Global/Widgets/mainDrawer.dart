import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Views/Home/home_page.dart';
import '../../Views/Note/Main Page/note_mainPage.dart';
import '../../Views/Timer/timer_page.dart';
import '../../Views/Test/test_page.dart';

Widget MainDrawer() {
  return Drawer(
    child: SafeArea(
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Icon(
                  Icons.person,
                  size: 40,
                ),
              ),
              accountName: Text("Ezzoubair zarqi"),
              accountEmail: Text(
                "zarqi.ezzoubair@gmail.com",
              ),
            ),
          ),
          DrawerTile(
              name: "Home",
              icon: const Icon(Icons.home),
              ontap: () {
                Get.offAll(() => HomePage());
              }),
          DrawerTile(
              name: "Notes",
              icon: const Icon(Icons.notes),
              ontap: () {
                Get.offAll(() => NoteMainPage());
              }),
          DrawerTile(
              name: "Timer",
              icon: const Icon(Icons.timer),
              ontap: () {
                Get.offAll(() => TimerPage());
              }),
          DrawerTile(
              name: "Test",
              icon: const Icon(Icons.texture_sharp),
              ontap: () {
                Get.offAll(() => TestPage());
              }),
        ],
      ),
    ),
  );
}

Widget DrawerTile({
  required String name,
  required Icon icon,
  required Function()? ontap,
}) =>
    ListTile(
      onTap: ontap,
      leading: icon,
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 17,
          fontFamily: "verdana",
          fontWeight: FontWeight.w700,
        ),
      ),
    );
