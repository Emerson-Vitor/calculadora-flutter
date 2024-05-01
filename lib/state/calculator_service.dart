
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends ChangeNotifier {
  List lista = [];
  String current = '0';

  void addDigit(var digit) {
    if (digit is int || digit == '+' || digit == '-' || digit == '*' ||
        digit == '/') {
      lista.add(digit);
    }
    notifyListeners();
  }

  String getLista() {
    return lista.join();
  }


  void calculate() {
    try {
      String expression = '';
      for (int i = 0; i < lista.length; i++) {
        expression = "$expression${lista[i]}";
      }
      Parser parser = Parser();
      Expression exp = parser.parse(expression);
      ContextModel cm = ContextModel();
      current = exp.evaluate(EvaluationType.REAL, cm).toString();
    } catch (e) {
      current = "error $e";
    }
    notifyListeners();
  }

  void cleanLista(){
    lista = [];
    current = '0';
    notifyListeners();
  }
}