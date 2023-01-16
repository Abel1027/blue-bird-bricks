import 'package:flutter_test/flutter_test.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/entities/{{project_name.snakeCase()}}_entity.dart';

void main() {
  group('TestPack', () {
    test('can be instantiated', () {
      expect(
        const {{project_name.pascalCase()}}Entity(text: 'text', number: 0),
        isNotNull,
      );
    });
  });
}
