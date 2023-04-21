

import 'package:flutter/material.dart';
import 'package:simple_intrest/view/add.dart';
import 'package:simple_intrest/view/simple_intrest.dart';




class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SimpleIntrest(), 
  
    );
  }
}
