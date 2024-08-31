import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knov_practical/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}

class PostTimer {
  Timer? _timer;
  int _start = 0;

  bool isRunning() {
    return _timer != null;
  }
}
