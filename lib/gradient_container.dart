import 'package:flutter/material.dart';
import 'package:primeiro_app/rolar_dado.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 36, 1),
            Color.fromARGB(255, 1, 56, 2),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: RolarDado(),
      ),
    );
  }
}
