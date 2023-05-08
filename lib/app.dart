import 'package:flutter/material.dart';
import 'package:simple_intrest/view/Dashboard.dart';
import 'package:simple_intrest/view/area_of_circle.dart';
import 'package:simple_intrest/view/class_exercise.dart';
import 'package:simple_intrest/view/column_view.dart';
import 'package:simple_intrest/view/container_view.dart';
import 'package:simple_intrest/view/display.dart';
import 'package:simple_intrest/view/load_image_view.dart';
import 'package:simple_intrest/view/mathmatics_view.dart';
import 'package:simple_intrest/view/media_query_view.dart';
import 'package:simple_intrest/view/output_screen.dart';
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
          '/mathRoute': (context) => const MathmaticsView(),
          '/siRoute': (context) => const SimpleIntrest(),
          '/AOCRoute': (context) => const circleView(),
          '/displayNameRoute': (context) => const display(),
          '/reachTextRoute': (context) => const reachTextView(),
          '/columnRoute': (context) => const ColumnView(),
          '/outputRoute':(context) => const OutPutScreenView(),
          '/containerRoute': (context) => const ContainerView(),
          '/loadimageRoute':(context) => const LoadImageView(),
          '/mediaQueryRoute': (context) => const MediaQueryView(),
          '/classWorkRoute':(contex)=> const ClassExerciseView(),
        });
  }
}
