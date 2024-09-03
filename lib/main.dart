import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';

import 'ui/pages/home.dart';

void main() {
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );

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
