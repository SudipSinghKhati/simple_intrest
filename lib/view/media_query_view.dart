import 'package:flutter/material.dart';

class MediaQueryView extends StatelessWidget {
  const MediaQueryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.amber,
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
