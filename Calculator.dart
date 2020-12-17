import 'package:flutter/material.dart';
import 'CalcButton.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _history = '';
  String _expression = '';

  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void allClear(String text) {
    setState(() {
      _history = '';
      _expression = '';
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }
  void evaluate(String text){
      Parser p = Parser();
       Expression exp = p.parse(_expression);
       ContextModel cm = ContextModel();
       double eval = exp.evaluate(EvaluationType.REAL, cm);


    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Calculator Page'),
          backgroundColor: Colors.redAccent,
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 34),
              child: Text(
                _history,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black45),
              ),
              alignment: Alignment(1, 1),
            ),
            Container(
              padding: EdgeInsets.only(right: 34),
              child: Text(
                _expression,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                    color: Colors.black),
              ),
              alignment: Alignment(1, 1),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: 'AC',
                    callback: allClear,
                    fillColor: 0xFF8B0000,
                    textSize: 17,
                  ),
                  CalcButton(
                    text: 'C',
                    callback: clear,
                    fillColor: 0xFF8B0000,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: '%',
                    callback: numClick,
                    fillColor: 0xFFFF6347,
                    textSize: 23,
                  ),
                  CalcButton(
                    text: '/',
                    callback: numClick,
                    fillColor: 0xFFFF6347,
                    textSize: 24,
                  ),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '7',
                    callback: numClick,
                    textColor: 0xFF000000,
                    textSize: 25,
                  ),
                  CalcButton(
                    text: '8',
                    callback: numClick,
                    textColor: 0xFF000000,
                    textSize: 25,
                  ),
                  CalcButton(
                    text: '9',
                    callback: numClick,
                    textColor: 0xFF000000,
                    textSize: 25,
                  ),
                  CalcButton(
                    text: '*',
                    callback: numClick,
                    fillColor: 0xFFFF6347,
                    textSize: 23,
                  ),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '4',
                    callback: numClick,
                    textColor: 0xFF000000,
                    textSize: 25,
                  ),
                  CalcButton(
                    text: '5',
                    callback: numClick,
                    textColor: 0xFF000000,
                    textSize: 25,
                  ),
                  CalcButton(
                    text: '6',
                    callback: numClick,
                    textColor: 0xFF000000,
                    textSize: 25,
                  ),
                  CalcButton(
                    text: '-',
                    callback: numClick,
                    fillColor: 0xFFFF6347,
                    textSize: 35,
                  ),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '1',
                    callback: numClick,
                    textColor: 0xFF000000,
                    textSize: 25,
                  ),
                  CalcButton(
                    text: '2',
                    callback: numClick,
                    textColor: 0xFF000000,
                    textSize: 25,
                  ),
                  CalcButton(
                    text: '3',
                    callback: numClick,
                    textColor: 0xFF000000,
                    textSize: 25,
                  ),
                  CalcButton(
                    text: '+',
                    callback: numClick,
                    fillColor: 0xFFFF6347,
                    textSize: 24,
                  ),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '.',
                    callback: numClick,
                    textColor: 0xFF000000,
                    textSize: 23,
                  ),
                  CalcButton(
                    text: '0',
                    callback: numClick,
                    textColor: 0xFF000000,
                    textSize: 25,
                  ),
                  CalcButton(
                    text: '00',
                    callback: numClick,
                    textColor: 0xFF000000,
                    textSize: 25,
                  ),
                  CalcButton(
                    text: '=',
                    callback: evaluate,
                    fillColor: 0xFFFF6347,
                    textSize: 25,
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
