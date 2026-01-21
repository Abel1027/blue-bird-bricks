import 'package:mocktail/mocktail.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/entities/{{project_name.snakeCase()}}_entity.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/use_cases/{{project_name.snakeCase()}}_use_case.dart';

class Mocked{{project_name.pascalCase()}}UseCase extends Mock implements {{project_name.pascalCase()}}UseCase {
  void mock({{project_name.pascalCase()}}Entity expected) {
    when(call).thenAnswer((_) async => expected);
  }
}
