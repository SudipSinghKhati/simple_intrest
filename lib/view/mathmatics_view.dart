import 'package:flutter/material.dart';
import 'package:simple_intrest/model/math.dart';

class MathmaticsView extends StatefulWidget {
  const MathmaticsView({super.key});

  @override
  State<MathmaticsView> createState() => _MathmaticsViewState();
}

class _MathmaticsViewState extends State<MathmaticsView> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();
  double result = 0;
  // var math = Math();
  // state() {
  //   firstController.text = '67';
  //   secondController.text = '40';
  // }

  // @override
  // void initState() {
  //   state();
  //   super.initState();
  // }

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }

  late Mathmatics math;
  void add() {
    math = Mathmatics();
    setState(() {
      result = math.add(double.parse(firstController.text),
          double.parse(secondController.text));
    });
  }

  void sub() {
    math = Mathmatics();
    setState(() {
      result = math.sub(double.parse(firstController.text),
          double.parse(secondController.text));
    });
  }

  void mul() {
    math = Mathmatics();
    setState(() {
      result = math.mult(double.parse(firstController.text),
          double.parse(secondController.text));
    });
  }

  void div() {
    math = Mathmatics();
    setState(() {
      result = math.div(double.parse(firstController.text),
          double.parse(secondController.text));
    });
  }

  //helps to check form state
  final mykey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar helps to show menu bar
        appBar: AppBar(
          //tilte helps to helps write text on the menu bar
          title: const Text('Mathmatics'),
          //center Title  helps to make title at the center of the menu bar
          centerTitle: true,
          //elvation helps to increase/ decrease the shadow to menu bar
          elevation: 0,
        ),
        //body helps to add widget on the app
        //SingleChildScrollView helps to scroll the app form up and down side
        body: SingleChildScrollView(
          //child is use when there is only one widget
          //padding helps to increase the padding side of an widget
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            //Column helps to add widgets or text in columns
            //row helps to add widgets or text in rows
            child: Form(
              //decelaring form state inside form
              key: mykey,
              child: Column(
                //childern helps to add multiple widgets
                children: [
                  //Sizedbox helps to increase the height of the widgets
                  const SizedBox(
                    height: 10,
                  ),
                  //TextField is used for user input
                  TextFormField(
                      keyboardType: TextInputType.number,
                      controller: firstController,
                      //decotation helps to decorate the textfiled and it mus be inside text field
                      decoration: InputDecoration(
                        //labelText helps to lets users to see the written text in border line
                        //hintText helps to lets users to see the written text but it wont show in border
                        labelText: 'Enter First Number',
                        //border helps to make border in differnet shapes
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      //validator helps to make user to input the vaild data
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter First No';
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: secondController,
                    decoration: InputDecoration(
                      labelText: 'Enter Second Number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter second no';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    //double.infinity helps to make the button go with the wight of an andiord or Ios
                    width: double.infinity,
                    //ElevatedButton helps to make button
                    child: ElevatedButton(
                      onPressed: () {
                        //helps to show error message while pressing the butoon
                        if (mykey.currentState!.validate()) {
                          add();
                        }
                      },
                      child: const Text('Add'),
                    ),
                  ),
                  SizedBox(
                    //double.infinity helps to make the button go with the wight of an andiord or Ios
                    width: double.infinity,
                    //ElevatedButton helps to make button
                    child: ElevatedButton(
                      onPressed: () {
                        if (mykey.currentState!.validate()) {
                          sub();
                        }
                      },
                      child: const Text('SUB'),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          if (mykey.currentState!.validate()) {
                            mul();
                          }
                        },
                        child: const Text("Multiply")),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          if (mykey.currentState!.validate()) {
                            div();
                          }
                        },
                        child: const Text("Divide")),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Total is: $result',
                      //Stlye helps to make text into differnet Style
                      style: const TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
