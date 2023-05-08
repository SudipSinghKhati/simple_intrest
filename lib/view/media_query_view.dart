import 'package:flutter/material.dart';

import '../common/show_my_message.dart';

class MediaQueryView extends StatefulWidget {
  const MediaQueryView({super.key});

  @override
  State<MediaQueryView> createState() => _MediaQueryViewState();
}

class _MediaQueryViewState extends State<MediaQueryView> {
  // void showMessage1() {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Media Query'),
      //   elevation: 0,
      // ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              width: double.infinity,
              color: Colors.amber,
              child: ElevatedButton(
                  onPressed: () {
                    showMessage(context, "Hello", color: Colors.green);
                  },
                  child: const Text('Click Me')),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.black,
              child: ElevatedButton(
                  onPressed: () {
                    showMessage(context, "Hello 159");
                  },
                  child: const Text('Click me')),
            ),
          ),
          // Container(
          //   width: double.infinity,
          //   height: height * .33,
          //   color: Colors.amberAccent,
          // )
        ],
      ),
    );
  }
}
