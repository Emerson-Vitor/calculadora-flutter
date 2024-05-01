import 'package:calculator/home/widgets/numy_pad_widget.dart';
import 'package:calculator/home/widgets/tela_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
          children: [
            SafeArea(child: Tela()),
            NumyPad(),
          ],
        ));
  }
}