import 'package:app/Global/scroll.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:device_preview/device_preview.dart';

import 'Views/Home/home_page.dart';
import 'Views/Timer/timer_page.dart';

void main() async {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: MyScrollBehavior(),
      textDirection: TextDirection.ltr,
      theme: ThemeData(
        useMaterial3: true,
      ),
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
    );
  }
}
