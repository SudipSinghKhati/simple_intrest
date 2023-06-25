import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.amber,
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.black,
                ),
                Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.amber,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
