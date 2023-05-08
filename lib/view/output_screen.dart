import 'package:flutter/material.dart';

class OutPutScreenView extends StatefulWidget {
  const OutPutScreenView({super.key});

  @override
  State<OutPutScreenView> createState() => _OutPutScreenViewState();
}

class _OutPutScreenViewState extends State<OutPutScreenView> {
  double? result;
  @override
  void initState() {
    super.initState();
    
  }

  @override
  void didChangeDependencies() {
    result = ModalRoute.of(context)!.settings.arguments as double?;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    result = ModalRoute.of(context)!.settings.arguments as double?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Output Screen'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Text('Result is ${result.toString()}'),
      )),
    );
  }
}
