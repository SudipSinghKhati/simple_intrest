import 'package:flutter/material.dart';
import 'package:simple_intrest/model/circle.dart';

// ignore: camel_case_types
class circleView extends StatefulWidget {
  const circleView({super.key});

  @override
  State<circleView> createState() => _circleView();
}

// ignore: camel_case_types
class _circleView extends State<circleView> {
  double radius = 1;
  double result = 0;

  late Circle circle;

  void circleArea() {
    circle = Circle(radius);
    setState(() {
      result = circle.areaOfCircle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Area Of Circle"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  radius = double.parse(value);
                },
                decoration: InputDecoration(
                  hintText: 'Enter radius',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      circleArea();
                    },
                    child: const Text('Area Of Circle')),
              ),
              Text(
                'Area of Cirlce is: $result',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
