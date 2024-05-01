
import 'package:calculator/state/calculator_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Tela extends StatefulWidget {
  const Tela({super.key});

  @override
  State<Tela> createState() => _TelaState();
}

class _TelaState extends State<Tela> {


  @override
  Widget build(BuildContext context) {
    var calculatorState = context.watch<Calculator>();
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height/3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const SizedBox(
                  height: 2,
                ),

                    Text(calculatorState.getLista(), style: Theme.of(context).textTheme.titleSmall,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(calculatorState.current, style: Theme.of(context).textTheme.titleLarge,),
                    )


              ],
            ),
          ),
        ],
      )
    );
  }
}
