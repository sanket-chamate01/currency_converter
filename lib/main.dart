import 'package:currency_converter/material_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:currency_converter/cupertino_page.dart';

void main() {
  runApp(const MyApp());
  // runApp(const MyCupertinoApp());
}

// Types of Widgets
// 1. StatelessWidget
// 2. StatefulWidget
// 3. InheritedWidget

// Types of Design(Popular)
// 1. Material Design
// 2. Cupertino Design

// State is data that determine how a widget should look like
// key helps in identifying and differentiating between widgets

// Types of Modes in an Application
// 1. debug
// 2. release - app in production
// 3. profile- app in production but shows errors/warnings

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// BuildContext tells location of particular widget in widgetTree
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyMaterialPage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CuurencyConvertorCupertino(),
    );
  }
}
