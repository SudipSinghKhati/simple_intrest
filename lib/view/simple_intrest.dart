

import 'package:flutter/material.dart';

class SimpleIntrest extends StatefulWidget {
  const SimpleIntrest({super.key});

  @override
  State<SimpleIntrest> createState() => _SimpleIntrestState();
}

class _SimpleIntrestState extends State<SimpleIntrest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Interest '),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Principal',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter rate',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter time',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('CALCULATE'),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Simple interest is 0',
                  style: TextStyle(
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
