import 'package:flutter/material.dart';

class LoadImageView extends StatefulWidget {
  const LoadImageView({super.key});

  @override
  State<LoadImageView> createState() => _LoadImageViewState();
}

class _LoadImageViewState extends State<LoadImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loading Image'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/a.jpg')),
              Image.network(
                'https://images.unsplash.com/photo-1583004231608-3ce0c58f5867?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bmF0dXJlJTIwd2FsbHBhcGVyfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
                fit: BoxFit.fitHeight,
              )
            ],
          ),
        ),
      )),
    );
  }
}
