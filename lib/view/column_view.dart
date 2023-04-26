import 'package:flutter/material.dart';

class columnView extends StatelessWidget {
  const columnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: const [
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
            const Spacer(),
            Row(
              children: const [
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
