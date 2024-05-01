
import 'package:calculator/shared/app_widget.dart';
import 'package:calculator/shared/state/calculator_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Calculator(),
      child: const AppWidget(),
    ),
  );
}




