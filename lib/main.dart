import 'package:f_simple_state_management_template/ui/controllers/color_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import 'ui/pages/home.dart';

void main() {
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );

  Get.put(ColorController());

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Basic state manager sample"),
      ),
      body: const SafeArea(
        child: HomePage(),
      ),
    ),
  ));
}
