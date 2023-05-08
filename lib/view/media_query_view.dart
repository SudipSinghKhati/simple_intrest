import 'package:flutter/material.dart';

class MediaQueryView extends StatefulWidget {
  const MediaQueryView({super.key});

  @override
  State<MediaQueryView> createState() => _MediaQueryViewState();
}

class _MediaQueryViewState extends State<MediaQueryView> {
  void showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.green,
      content: Text(message),
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
    ));
  }

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
                    showMessage("Hello");
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
                    showMessage("Hello 159");
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
