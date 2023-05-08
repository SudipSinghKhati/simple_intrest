import 'package:flutter/material.dart';

class ClassExerciseView extends StatefulWidget {
  const ClassExerciseView({super.key});

  @override
  State<ClassExerciseView> createState() => _ClassExerciseViewState();
}

class _ClassExerciseViewState extends State<ClassExerciseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows and Column'),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.amber,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.red,
                  ),
                ),
                // Column(
                //   children: [

                //   ],
                // )
              ],
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.blue,
            )),
            Expanded(
                child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.red,
            )),
            Expanded(
                child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.black,
            )),
          ],
        ),
      ),
    );
  }
}
