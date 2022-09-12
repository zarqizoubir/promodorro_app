import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Views/Home/home_page.dart';
import '../../Views/Note/Main Page/note_mainPage.dart';
import '../../Views/Timer/timer_page.dart';
import '../../Views/Test/test_page.dart';
import '../../Views/Calendar/calendar_page.dart';
import '../../Views/Setting/setting_page.dart';

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
              accountName: Text("Username"),
              accountEmail: Text(
                "User@email.com",
              ),
            ),
          ),
          DrawerTile(
              isSelected: false,
              name: "Home",
              icon: const Icon(Icons.home),
              ontap: () {
                Get.offAll(() => HomePage());
              }),
          DrawerTile(
              isSelected: false,
              name: "Notes",
              icon: const Icon(Icons.notes),
              ontap: () {
                Get.offAll(() => NoteMainPage());
              }),
          DrawerTile(
              isSelected: false,
              name: "Timer",
              icon: const Icon(Icons.timer),
              ontap: () {
                Get.offAll(() => TimerPage());
              }),
          DrawerTile(
              isSelected: false,
              name: "Calendar",
              icon: const Icon(Icons.calendar_month),
              ontap: () {
                Get.offAll(() => CalendarPage());
              }),
          DrawerTile(
              isSelected: false,
              name: "Settings",
              icon: const Icon(Icons.settings),
              ontap: () {
                Get.offAll(() => SettingPage());
              }),
          DrawerTile(
              isSelected: false,
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
  required bool isSelected,
  required String name,
  required Icon icon,
  required Function()? ontap,
}) =>
    ListTile(
      selected: isSelected,
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
