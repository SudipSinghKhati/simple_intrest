import 'package:flutter/material.dart';

class reachTextView extends StatefulWidget {
  const reachTextView({super.key});

  @override
  State<reachTextView> createState() => _reachTextViewState();
}

class _reachTextViewState extends State<reachTextView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reach Text'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: RichText(
          text: const TextSpan(
            text: 'My ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'name is',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              TextSpan(
                text: ' sudip',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.amber),
              ),
            ],
          ),
        ),
        // child: Container(
        //   color: Colors.black,
        //   width: double.infinity,
        //   child: const Text(
        //     "My name is sudip",
        //     textAlign: TextAlign.center,
        //     style: TextStyle(
        //       fontSize: 30,
        //       fontWeight: FontWeight.bold,
        //       color: Colors.blue,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
