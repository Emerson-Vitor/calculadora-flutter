import 'package:calculator/state/calculator_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NumyPad extends StatefulWidget {
  const NumyPad({super.key});

  @override
  State<NumyPad> createState() => _NumyPadState();
}

class _NumyPadState extends State<NumyPad> {


  @override
  Widget build(BuildContext context) {
    double? numSpace = 8;
    var calculator = context.watch<Calculator>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NumPad(value: 1, callBack: calculator.addDigit),
            SizedBox(
              width: numSpace
            ),
            NumPad(value: 2, callBack: calculator.addDigit),
             SizedBox(
              width: numSpace,
            ),
            NumPad(value: 3, callBack: calculator.addDigit),
            SizedBox(
              width: numSpace,
            ),
            FloatingActionButton(
              backgroundColor: Colors.redAccent,
              child: const Text('+'),
              onPressed: () => {calculator.addDigit('+')},
            )
          ],
        ),
        SizedBox(
          height: numSpace,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NumPad(value: 4, callBack: calculator.addDigit),
            SizedBox(
              width: numSpace,
            ),
            NumPad(value: 5, callBack: calculator.addDigit),
            SizedBox(
              width: numSpace,
            ),
            NumPad(value: 6, callBack: calculator.addDigit),
            SizedBox(
              width: numSpace,
            ),
            FloatingActionButton(
              backgroundColor: Colors.redAccent,
              child: const Text('-'),
              onPressed: () => {calculator.addDigit('-')},
            )
          ],
        ),
        SizedBox(
          height: numSpace,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NumPad(value: 7, callBack: calculator.addDigit),
            SizedBox(
              width: numSpace,
            ),
            NumPad(value: 8, callBack: calculator.addDigit),
            SizedBox(
              width: numSpace,
            ),
            NumPad(value: 9, callBack: calculator.addDigit),
            SizedBox(
              width: numSpace,
            ),
            FloatingActionButton(
              backgroundColor: Colors.redAccent,
              child: const Text('x'),
              onPressed: () => {calculator.addDigit('*')},
            )
          ],
        ),
        SizedBox(
          height: numSpace,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: Colors.redAccent,
              child: const Icon(Icons.backspace_outlined),
              onPressed: () => {calculator.cleanLista()},
            ),
            SizedBox(
              width: numSpace,
            ),
            NumPad(value: 0, callBack: calculator.addDigit),
            SizedBox(
              width: numSpace,
            ),
            FloatingActionButton(
              backgroundColor: Colors.redAccent,
              child: const Text('='),
              onPressed: () => {calculator.calculate()},
            ),
            SizedBox(
              width: numSpace,
            ),
            FloatingActionButton(
              backgroundColor: Colors.redAccent,
              child: const Text('/'),
              onPressed: () => {calculator.addDigit('/')},
            )
          ],
        ),
      ],
    );
  }
}

class NumPad extends StatelessWidget {
  final int value;
  final Function callBack;

  const NumPad({super.key, required this.value, required this.callBack});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.redAccent,
      child: Text(value.toString()),
      onPressed: () => {callBack(value)},
    );
  }
}
