import 'package:flutter_test/flutter_test.dart';
import 'package:{{project_name.snakeCase()}}/src/data/mappers/data_{{project_name.snakeCase()}}_mapper.dart';
import 'package:{{project_name.snakeCase()}}/src/data/models/data_{{project_name.snakeCase()}}_model.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/entities/{{project_name.snakeCase()}}_entity.dart';

void main() {
  group(Data{{project_name.pascalCase()}}Mapper, () {
    late Data{{project_name.pascalCase()}}Mapper mapper;

    setUp(() {
      mapper = Data{{project_name.pascalCase()}}Mapper();
    });

    test('should map correctly', () {
      final result = mapper.map(
        const Data{{project_name.pascalCase()}}Model(
          name: 'name',
          description: 'description',
        ),
      );

      expect(
        result,
        equals(
          const {{project_name.pascalCase()}}Entity(
            name: 'name',
            description: 'description',
          ),
        ),
      );
    });
  });
}
