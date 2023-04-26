import 'package:flutter/material.dart';
import 'package:simple_intrest/view/Dashboard.dart';
import 'package:simple_intrest/view/add.dart';
import 'package:simple_intrest/view/area_of_circle.dart';
import 'package:simple_intrest/view/column_view.dart';
import 'package:simple_intrest/view/display.dart';
import 'package:simple_intrest/view/reach_text.dart';
import 'package:simple_intrest/view/simple_intrest.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const DashboardView(),
          '/addRoute': (context) => const Add(),
          '/siRoute': (context) => const SimpleIntrest(),
          '/AOCRoute': (context) => const circleView(),
          '/displayNameRoute':(context) => const display(),
          '/reachTextRoute':(context) => const reachTextView(),
          '/columnRoute':(context) => const columnView(),
        });
  }
}
