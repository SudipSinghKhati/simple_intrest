import 'package:flutter/material.dart';

class SimpleIntrest extends StatefulWidget {
  const SimpleIntrest({super.key});

  @override
  State<SimpleIntrest> createState() => _SimpleIntrestState();
}

class _SimpleIntrestState extends State<SimpleIntrest> {
  double principle = 0;
  double rate = 0;
  double time = 0;
  double result = 0;
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
            child: Column(
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  onChanged: (value) {
                    principle = double.parse(value);
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter Principal',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  onChanged: (value) {
                    rate = double.parse(value);
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter rate',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  onChanged: (value) {
                    time = double.parse(value);
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter time',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = principle * rate * time / 100;
                      });
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
    );
  }
}
