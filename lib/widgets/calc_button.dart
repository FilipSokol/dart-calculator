import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double width;
  final double height;
  final Function callback;

  const CalculatorButton({
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.width,
    required this.height,
    required this.callback
  });

  @override
  Widget build(BuildContext context){
    return Container(
        margin: const EdgeInsets.all(10.0),
        child: SizedBox(
            width: width,
            height: height,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(text,
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              //onPressed: () => {},
              onPressed: () => callback(text),
              color: Color(fillColor),
              textColor: Color(textColor),
            )
        )
    );
  }
}