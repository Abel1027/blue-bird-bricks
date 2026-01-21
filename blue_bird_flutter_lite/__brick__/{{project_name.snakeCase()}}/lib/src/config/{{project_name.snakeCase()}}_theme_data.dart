import 'package:{{project_name.snakeCase()}}/src/config/{{project_name.snakeCase()}}_color.dart';
import 'package:flutter/material.dart';

abstract class {{project_name.pascalCase()}}ThemeData {
  static final light = ThemeData(
    primaryColor: {{project_name.pascalCase()}}Color.blue,
  );

  static final dark = ThemeData(
    primaryColor: {{project_name.pascalCase()}}Color.yellow,
  );
}
