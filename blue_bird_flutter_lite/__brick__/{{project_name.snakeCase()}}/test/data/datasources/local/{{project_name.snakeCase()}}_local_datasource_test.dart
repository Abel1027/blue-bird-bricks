import 'package:flutter_test/flutter_test.dart';
import 'package:{{project_name.snakeCase()}}/src/data/datasources/local/{{project_name.snakeCase()}}_local_datasource.dart';
import 'package:{{project_name.snakeCase()}}/src/data/models/data_{{project_name.snakeCase()}}_model.dart';

void main() {
  group({{project_name.pascalCase()}}LocalDatasource, () {
    late {{project_name.pascalCase()}}LocalDatasource datasource;

    setUp(() {
      datasource = const {{project_name.pascalCase()}}LocalDatasource();
    });

    test('should fetch data correctly', () async {
      final result = await datasource.fetch(
        const Data{{project_name.pascalCase()}}Model(
          name: 'name',
          description: 'description',
        ),
      );

      expect(
        result,
        equals(
          const Data{{project_name.pascalCase()}}Model(
            name: 'name',
            description: 'description',
          ),
        ),
      );
    });
  });
}
