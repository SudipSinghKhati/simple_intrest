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
  final radiusController = TextEditingController();
  double result = 0;

  late Circle circle;

  void circleArea() {
    circle = Circle();
    setState(() {
      result = circle.areaOfCircle(double.parse(radiusController.text));
    });
  }

  @override
  void dispose() {
    radiusController.dispose();
    super.dispose();
  }

  final mykey = GlobalKey<FormState>();

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
          child: Form(
            key: mykey,
            child: Column(
              children: [
                const SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: radiusController,
                  decoration: InputDecoration(
                    hintText: 'Enter radius',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return " Enter radius of a circle";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (mykey.currentState!.validate()) {
                          circleArea();
                        }
                      },
                      child: const Text('Area Of Circle')),
                ),
                Text(
                  'Area of Cirlce is: $result',
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
