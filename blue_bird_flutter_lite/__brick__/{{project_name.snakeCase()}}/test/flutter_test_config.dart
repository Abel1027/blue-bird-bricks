import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:{{project_name.snakeCase()}}/src/config/{{project_name.snakeCase()}}_theme_data.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return AlchemistConfig.runWithConfig(
    config: AlchemistConfig(theme: {{project_name.pascalCase()}}ThemeData.light),
    run: testMain,
  );
}
