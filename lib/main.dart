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
  // Wywalało błąd - Dart is null safe . You either must always assign a value or mark it explicitly as nullable using a ?
  int? firstNum;
  int? secondNum;
  String? history;
  String? textToDisplay;
  String? res;
  String? operation;

  void btnOnClick(String btnVal){
    print(btnVal);
    if( btnVal == 'Ent'){
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if ( btnVal == '+' || btnVal == '-' || btnVal == '*' || btnVal == '/'){
      //firstNum = int.parse(textToDisplay);
    }
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
                    '957',
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
                  '957',
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
                    text: 'Num',
                    fillColor: 0xf02a3682,
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
                  CalculatorButton(
                    text: '-',
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
                    ],
                  ),
                  Column(
                    children: [
                      CalculatorButton(
                        text: '+',
                        fillColor: 0xffffeb3b,
                        textColor: 0xff949494,
                        width: 80,
                        height: 130,
                        callback: btnOnClick,
                      ),
                      CalculatorButton(
                        text: 'Ent',
                        fillColor: 0xff2a3682,
                        textColor: 0xfff5f5f5,
                        width: 80,
                        height: 130,
                        callback: btnOnClick,
                      ),
                    ],
                  ),
                ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '0',
                  fillColor: 0xff2a3682,
                  textColor: 0xfff5f5f5,
                  width: 185,
                  height: 80,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '.',
                  fillColor: 0xff2a3682,
                  textColor: 0xfff5f5f5,
                  width: 185,
                  height: 80,
                  callback: btnOnClick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
