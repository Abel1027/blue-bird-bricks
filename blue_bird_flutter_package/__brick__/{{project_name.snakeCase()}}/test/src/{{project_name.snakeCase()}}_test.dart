{{#in_project}}import 'package:dependencies/dependencies.dart';{{/in_project}}{{^in_project}}import 'package:flutter_test/flutter_test.dart';{{/in_project}}
import 'package:{{project_name.snakeCase()}}/src/domain/entities/{{project_name.snakeCase()}}_entity.dart';

void main() {
  group('{{project_name.pascalCase()}}Entity Test', () {
    test('can be instantiated', () {
      expect(
        const {{project_name.pascalCase()}}Entity(text: 'text', number: 0),
        isNotNull,
      );
    });
  });
}
