import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:{{project_name.snakeCase()}}/src/data/models/data_{{project_name.snakeCase()}}_model.dart';
import 'package:{{project_name.snakeCase()}}/src/data/repositories/{{project_name.snakeCase()}}_repository_impl.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/entities/{{project_name.snakeCase()}}_entity.dart';

import '../../config/mock/data/datasources/mocked_{{project_name.snakeCase()}}_local_datasource.dart';
import '../../config/mock/data/datasources/mocked_{{project_name.snakeCase()}}_remote_datasource.dart';
import '../../config/mock/data/mappers/mocked_data_{{project_name.snakeCase()}}_mapper.dart';
import '../../config/mock/data/mappers/mocked_{{project_name.snakeCase()}}_mapper.dart';
import '../../config/register_all_fallback_values.dart';

void main() {
  group({{project_name.pascalCase()}}RepositoryImpl, () {
    late Mocked{{project_name.pascalCase()}}LocalDatasource mocked{{project_name.pascalCase()}}LocalDatasource;
    late Mocked{{project_name.pascalCase()}}RemoteDatasource mocked{{project_name.pascalCase()}}RemoteDatasource;
    late Mocked{{project_name.pascalCase()}}Mapper mocked{{project_name.pascalCase()}}Mapper;
    late MockedData{{project_name.pascalCase()}}Mapper mockedData{{project_name.pascalCase()}}Mapper;
    late {{project_name.pascalCase()}}RepositoryImpl repository;

    const data{{project_name.pascalCase()}}Model = Data{{project_name.pascalCase()}}Model(
      name: 'name',
      description: 'description',
    );
    const {{project_name.camelCase()}}Entity = {{project_name.pascalCase()}}Entity(
      name: 'name',
      description: 'description',
    );

    setUp(() {
      registerAllFallbackValues();

      mocked{{project_name.pascalCase()}}LocalDatasource = Mocked{{project_name.pascalCase()}}LocalDatasource()
        ..mockFetch(data{{project_name.pascalCase()}}Model);
      mocked{{project_name.pascalCase()}}RemoteDatasource = Mocked{{project_name.pascalCase()}}RemoteDatasource()
        ..mockFetch(data{{project_name.pascalCase()}}Model);
      mocked{{project_name.pascalCase()}}Mapper = Mocked{{project_name.pascalCase()}}Mapper()
        ..mock(data{{project_name.pascalCase()}}Model);
      mockedData{{project_name.pascalCase()}}Mapper = MockedData{{project_name.pascalCase()}}Mapper()
        ..mock({{project_name.camelCase()}}Entity);

      repository = {{project_name.pascalCase()}}RepositoryImpl(
        mocked{{project_name.pascalCase()}}LocalDatasource,
        mocked{{project_name.pascalCase()}}RemoteDatasource,
        mocked{{project_name.pascalCase()}}Mapper,
        mockedData{{project_name.pascalCase()}}Mapper,
      );
    });

    test('should return entity from datasource', () async {
      final result = await repository.fetch(fromLocal: true);

      verifyInOrder([
        () => mocked{{project_name.pascalCase()}}Mapper.map(any()),
        () => mocked{{project_name.pascalCase()}}LocalDatasource.fetch(any()),
        () => mockedData{{project_name.pascalCase()}}Mapper.map(any()),
      ]);

      expect(result, equals({{project_name.camelCase()}}Entity));
    });
  });
}
