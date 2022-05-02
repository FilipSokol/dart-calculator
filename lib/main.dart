import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './widgets/calc_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Kalkulator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

  class _MyHomePageState extends State<MyHomePage> {
  double firstNum = 0;
  double secondNum = 0;
  String history = "";
  String textToDisplay = "";
  String res = "";
  String operation = "";

  // DO USUWANIA 0 JEŚLI JEST np 11.0
  RegExp regex = RegExp(r'([.]*0)(?!.*\d)');

  void btnOnClick(String btnVal){
    print(btnVal);
    if( btnVal == 'C'){
      if( res.isNotEmpty ){
        res = res.substring(0, res.length - 1);
      }else{
        res = "";
      }
    } else if ( btnVal == 'AC') {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = "";
      history = "";
    } else if ( btnVal == '+' || btnVal == '-' || btnVal == '*' || btnVal == '/' || btnVal == "Num"){
      firstNum = double.parse(textToDisplay);
      res = "";
      operation = btnVal;
    } else if (btnVal == 'Ent') {
      secondNum = double.parse(textToDisplay);
      if( operation == '+'){
        res = (firstNum + secondNum).toString().replaceAll(regex, '');
        history = firstNum.toString().replaceAll(regex, '') + operation.toString() + secondNum.toString().replaceAll(regex, '');
      }
      if( operation == '-'){
        res = (firstNum - secondNum).toString().replaceAll(regex, '');
        history = firstNum.toString().replaceAll(regex, '') + operation.toString() + secondNum.toString().replaceAll(regex, '');
      }
      if( operation == '*'){
        res = (firstNum * secondNum).toString().replaceAll(regex, '');
        history = firstNum.toString().replaceAll(regex, '') + operation.toString() + secondNum.toString().replaceAll(regex, '');
      }
      if( operation == '/'){
        res = (firstNum / secondNum).toString().replaceAll(regex, '');
        history = firstNum.toString().replaceAll(regex, '') + operation.toString() + secondNum.toString().replaceAll(regex, '');
      }
      if( operation == "Num"){
        res = (pow(firstNum, secondNum)).toString().replaceAll(regex, '');
        history = firstNum.toString().replaceAll(regex, '') + "^" + secondNum.toString().replaceAll(regex, '');
      }
    } else {
         res = double.parse(textToDisplay + btnVal).toString();
         history = "";
    }

    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: const Color(0xff465ad7),
      body: Container(
        margin: const EdgeInsets.only(bottom: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, bottom: 0, left: 12, right: 12),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          color: Color(0xFF9E9E9E),
                        )
                    ),
                  ),
                ),
                alignment: const Alignment(1.0, 1.0)
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 12 , left: 12, right: 12),
                child: Text(
                  textToDisplay,
                  style: GoogleFonts.rubik(
                    textStyle: const TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    )
                  ),
                ),
              ),
                  alignment: const Alignment(1.0, 1.0)
            ),
          Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    fillColor: 0xffD70040,
                    textColor: 0xfff5f5f5,
                    width: 80,
                    height: 80,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: 'C',
                    fillColor: 0xffD70040,
                    textColor: 0xfff5f5f5,
                    width: 80,
                    height: 80,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '/',
                    fillColor: 0xffffeb3b,
                    textColor: 0xff949494,
                    width: 80,
                    height: 80,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '*',
                    fillColor: 0xffffeb3b,
                    textColor: 0xff949494,
                    width: 80,
                    height: 80,
                    callback: btnOnClick,
                  ),
                ],
             ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  Column(
                    children: [
                      CalculatorButton(
                        text: '7',
                        fillColor: 0xff2a3682,
                        textColor: 0xfff5f5f5,
                        width: 80,
                        height: 80,
                        callback: btnOnClick,
                      ),
                      CalculatorButton(
                        text: '4',
                        fillColor: 0xff2a3682,
                        textColor: 0xfff5f5f5,
                        width: 80,
                        height: 80,
                        callback: btnOnClick,
                      ),
                      CalculatorButton(
                        text: '1',
                        fillColor: 0xff2a3682,
                        textColor: 0xfff5f5f5,
                        width: 80,
                        height: 80,
                        callback: btnOnClick,
                      ),
                      CalculatorButton(
                        text: '0',
                        fillColor: 0xff2a3682,
                        textColor: 0xfff5f5f5,
                        width: 80,
                        height: 80,
                        callback: btnOnClick,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CalculatorButton(text: '8',
                        fillColor: 0xff2a3682,
                        textColor: 0xfff5f5f5,
                        width: 80,
                        height: 80,
                        callback: btnOnClick,
                      ),
                      CalculatorButton(
                        text: '5',
                        fillColor: 0xff2a3682,
                        textColor: 0xfff5f5f5,
                        width: 80,
                        height: 80,
                        callback: btnOnClick,
                      ),
                      CalculatorButton(
                        text: '2',
                        fillColor: 0xff2a3682,
                        textColor: 0xfff5f5f5,
                        width: 80,
                        height: 80,
                        callback: btnOnClick,
                      ),
                      CalculatorButton(
                        text: '.',
                        fillColor: 0xff2a3682,
                        textColor: 0xfff5f5f5,
                        width: 80,
                        height: 80,
                        callback: btnOnClick,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CalculatorButton(
                        text: '9',
                        fillColor: 0xff2a3682,
                        textColor: 0xfff5f5f5,
                        width: 80,
                        height: 80,
                        callback: btnOnClick,
                      ),
                      CalculatorButton(
                        text: '6',
                        fillColor: 0xff2a3682,
                        textColor: 0xfff5f5f5,
                        width: 80,
                        height: 80,
                        callback: btnOnClick,
                      ),
                      CalculatorButton(
                        text: '3',
                        fillColor: 0xff2a3682,
                        textColor: 0xfff5f5f5,
                        width: 80,
                        height: 80,
                        callback: btnOnClick,
                      ),
                      CalculatorButton(
                        text: 'Num',
                        fillColor: 0xff2a3682,
                        textColor: 0xfff5f5f5,
                        width: 80,
                        height: 80,
                        callback: btnOnClick,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CalculatorButton(
                        text: '-',
                        fillColor: 0xffffeb3b,
                        textColor: 0xff949494,
                        width: 80,
                        height: 80,
                        callback: btnOnClick,
                      ),
                      CalculatorButton(
                        text: '+',
                        fillColor: 0xffffeb3b,
                        textColor: 0xff949494,
                        width: 80,
                        height: 80,
                        callback: btnOnClick,
                      ),
                      CalculatorButton(
                        text: 'Ent',
                        fillColor: 0xff57D352,
                        textColor: 0xfff5f5f5,
                        width: 80,
                        height: 180,
                        callback: btnOnClick,
                      ),
                    ],
                  ),
                ],
            ),
          ],
        ),
      ),
    );
  }
}
