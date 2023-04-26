import 'package:flutter/material.dart';
import 'package:simple_intrest/model/display_name.dart';

class display extends StatefulWidget {
  const display({super.key});

  @override
  State<display> createState() => _displayState();
}

class _displayState extends State<display> {
  String friendName = 'Click Me';
  DisplayName displayName = DisplayName();

  void getName() {
    // inita
    setState(() {
      friendName = displayName.nextName();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Display Name',
          ),
          centerTitle: true),
      body: Center(
        child: SizedBox(
            child: ElevatedButton(
                onPressed: () {
                  getName();
                },
                child: Text(friendName))),
      ),
    );
  }
}
