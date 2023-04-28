import 'package:flutter/material.dart';
import 'package:simple_intrest/model/simple_intrest_model.dart';

class SimpleIntrest extends StatefulWidget {
  const SimpleIntrest({super.key});

  @override
  State<SimpleIntrest> createState() => _SimpleIntrestState();
}

class _SimpleIntrestState extends State<SimpleIntrest> {
  final principleController = TextEditingController();
  final rateController = TextEditingController();
  final timeController = TextEditingController();
  double result = 0;

  @override
  void dispose() {
    principleController;
    rateController;
    timeController;
    super.dispose();
  }

  late simpleIntrestModel simpleintrest;
  void simpleIntrest1() {
    simpleintrest = simpleIntrestModel();
    setState(() {
      result = simpleintrest.simpleIntrest(
          double.parse(principleController.text),
          double.parse(rateController.text),
          double.parse(timeController.text));
    });
  }

  final myKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest '),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Form(
              key: myKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: principleController,
                    decoration: InputDecoration(
                      hintText: 'Enter Principal',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter the principle amount';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: rateController,
                    decoration: InputDecoration(
                        hintText: 'Enter rate',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter rate ';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: timeController,
                    decoration: InputDecoration(
                      hintText: 'Enter time',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter time';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (myKey.currentState!.validate()) {
                          simpleIntrest1();
                        }
                      },
                      child: const Text('CALCULATE'),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Simple interest is $result',
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
