import 'package:mocktail/mocktail.dart';
import 'package:{{project_name.snakeCase()}}/src/data/mappers/{{project_name.snakeCase()}}_mapper.dart';
import 'package:{{project_name.snakeCase()}}/src/data/models/data_{{project_name.snakeCase()}}_model.dart';

class Mocked{{project_name.pascalCase()}}Mapper extends Mock implements {{project_name.pascalCase()}}Mapper {
  void mock(Data{{project_name.pascalCase()}}Model expected) {
    when(() => map(any())).thenReturn(expected);
  }
}
