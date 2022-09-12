import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Settings"),
      ),
      body: Column(
        children: [
          TasksSettings(),
        ],
      ),
    );
  }

  Widget TasksSettings() => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Tasks Options :",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: ListTile(
                tileColor: Colors.indigo,
                onTap: () {},
              ),
            ),
          ],
        ),
      );
}
