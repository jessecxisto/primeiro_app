import 'dart:math';

import 'package:flutter/material.dart';

final Random numeroAleatorio = Random();

class RolarDado extends StatefulWidget {
  const RolarDado({super.key});

  @override
  State<RolarDado> createState() => _RolarDadoState();
}

class _RolarDadoState extends State<RolarDado> {
  String dado = "assets/images/dice-1.png";

  void rolarDado() {
    int numerosDoDado = numeroAleatorio.nextInt(6) + 1;
    setState(() {
      dado = "assets/images/dice-$numerosDoDado.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          dado,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rolarDado,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text("Rolar o Dado"),
        ),
      ],
    );
  }
}
