import 'package:mocktail/mocktail.dart';
import 'package:{{project_name.snakeCase()}}/src/data/repositories/{{project_name.snakeCase()}}_repository_impl.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/entities/{{project_name.snakeCase()}}_entity.dart';

class Mocked{{project_name.pascalCase()}}RepositoryImpl extends Mock
    implements {{project_name.pascalCase()}}RepositoryImpl {
  void mockFetch({{project_name.pascalCase()}}Entity expected) {
    when(() => fetch(fromLocal: any(named: 'fromLocal')))
        .thenAnswer((_) async => expected);
  }

  void mockSave() {
    when(push).thenAnswer((_) => Future.value());
  }
}
