import 'package:design_system/src/presentation/molecule/molecule.dart';
import 'package:flutter/material.dart';

class Organism extends StatelessWidget {
  const Organism({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Molecule(title: 'Title 1'),
        Molecule(title: 'Title 2'),
      ],
    );
  }
}
