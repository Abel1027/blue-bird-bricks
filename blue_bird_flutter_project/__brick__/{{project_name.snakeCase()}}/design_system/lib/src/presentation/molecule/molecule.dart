import 'package:design_system/src/presentation/atom/atom.dart';
import 'package:flutter/material.dart';

class Molecule extends StatelessWidget {
  const Molecule({
    required this.title,
    this.onPressed,
    super.key,
  });

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Atom(text: title),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: onPressed,
              child: const Atom(text: 'Press me'),
            ),
          ],
        ),
      ),
    );
  }
}
