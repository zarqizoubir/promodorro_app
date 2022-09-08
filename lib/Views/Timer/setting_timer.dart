import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingTimer extends StatelessWidget {
  const SettingTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Settings"),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text("Timer Setting"),
            tiles: [
              SettingsTile(
                enabled: false,
                onPressed: (context) {},
                leading: const Icon(Icons.timer),
                title: const Text("Work Duration"),
                trailing: Text("25:00 Min"),
              ),
              SettingsTile(
                enabled: false,
                onPressed: (context) {},
                leading: const Icon(Icons.timer),
                title: const Text("Rest Duration"),
                trailing: Text("5:00 Min"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
