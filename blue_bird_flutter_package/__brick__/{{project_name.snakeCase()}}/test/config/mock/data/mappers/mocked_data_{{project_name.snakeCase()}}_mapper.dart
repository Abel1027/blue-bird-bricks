import 'package:mocktail/mocktail.dart';
import 'package:{{project_name.snakeCase()}}/src/data/mappers/data_{{project_name.snakeCase()}}_mapper.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/entities/{{project_name.snakeCase()}}_entity.dart';

class MockedData{{project_name.pascalCase()}}Mapper extends Mock implements Data{{project_name.pascalCase()}}Mapper {
  void mock({{project_name.pascalCase()}}Entity expected) {
    when(() => map(any())).thenReturn(expected);
  }
}
