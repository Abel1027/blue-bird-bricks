import 'package:design_system/src/config/{{project_name.snakeCase()}}_color.dart';
import 'package:flutter/material.dart';

class Atom extends StatelessWidget {
  const Atom({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: const TextStyle(
          color: {{project_name.pascalCase()}}Color.black,
          fontWeight: FontWeight.w500,
        ),
    );
  }
}
