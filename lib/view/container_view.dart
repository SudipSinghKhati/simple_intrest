import 'package:flutter/material.dart';

class ContainerView extends StatefulWidget {
  const ContainerView({super.key});

  @override
  State<ContainerView> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.topRight,
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                )),
            // color: Colors.green, // when decoration is used this code will be invalid
            child: const Text(
              'Hello World',
            ),
          ),
        ),
      )),
    );
  }
}
