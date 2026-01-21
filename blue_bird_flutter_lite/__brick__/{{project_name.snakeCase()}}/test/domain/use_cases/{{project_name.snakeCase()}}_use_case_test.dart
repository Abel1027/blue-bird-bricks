import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/entities/{{project_name.snakeCase()}}_entity.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/use_cases/{{project_name.snakeCase()}}_use_case.dart';

import '../../config/mock/data/repositories/mocked_{{project_name.snakeCase()}}_repository_impl.dart';

void main() {
  group({{project_name.pascalCase()}}UseCase, () {
    late Mocked{{project_name.pascalCase()}}RepositoryImpl mocked{{project_name.pascalCase()}}RepositoryImpl;
    late {{project_name.pascalCase()}}UseCase useCase;

    setUp(() {
      mocked{{project_name.pascalCase()}}RepositoryImpl = Mocked{{project_name.pascalCase()}}RepositoryImpl();

      useCase = {{project_name.pascalCase()}}UseCase(
        mocked{{project_name.pascalCase()}}RepositoryImpl,
      );
    });

    test('should return entity from repository', () async {
      const {{project_name.camelCase()}}Entity = {{project_name.pascalCase()}}Entity(
        name: 'name',
        description: 'description',
      );
      mocked{{project_name.pascalCase()}}RepositoryImpl.mockFetch({{project_name.camelCase()}}Entity);

      final result = await useCase();

      verify(
        () => mocked{{project_name.pascalCase()}}RepositoryImpl.fetch(
          fromLocal: any(named: 'fromLocal'),
        ),
      ).called(1);

      expect(result, equals({{project_name.camelCase()}}Entity));
    });
  });
}
