import 'package:flutter/material.dart';
import 'package:simple_intrest/model/Math.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  double firstNumber = 0.0;
  double secondNumber = 0.0;
  double result = 0.0;
  // var math = Math();
  late Math math;
  void add() {
    math = Math();
    setState(() {
      result = math.add(firstNumber, secondNumber);
    });
  }

  void sub() {
    math = Math();
    setState(() {
      result = math.sub(firstNumber, secondNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar helps to show menu bar
        appBar: AppBar(
          //tilte helps to helps write text on the menu bar
          title: const Text('Hello'),
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
            child: Column(
              //childern helps to add multiple widgets
              children: [
                //Sizedbox helps to increase the height of the widgets
                const SizedBox(
                  height: 10,
                ),
                //TextField is used for user input
                TextField(
                  onChanged: (value) {
                    firstNumber = double.parse(value);
                  },
                  //decotation helps to decorate the textfiled and it mus be inside text field
                  decoration: InputDecoration(
                    //labelText helps to lets users to see the written text in border line
                    //hintText helps to lets users to see the written text but it wont show in border
                    labelText: 'Enter First Number',
                    //border helps to make border in differnet shapes
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    secondNumber = double.parse(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Second Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                SizedBox(
                  //double.infinity helps to make the button go with the wight of an andiord or Ios
                  width: double.infinity,
                  //ElevatedButton helps to make button
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        add();
                      });
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
                      sub();
                    },
                    child: const Text('SUB'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('Sum is: $result',
                    //Stlye helps to make text into differnet Style
                    style: const TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
        ));
  }
}
