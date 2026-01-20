import 'package:mocktail/mocktail.dart';
import 'package:{{project_name.snakeCase()}}/src/data/datasources/local/{{project_name.snakeCase()}}_local_datasource.dart';
import 'package:{{project_name.snakeCase()}}/src/data/models/data_{{project_name.snakeCase()}}_model.dart';

class Mocked{{project_name.pascalCase()}}LocalDatasource extends Mock
    implements {{project_name.pascalCase()}}LocalDatasource {
  void mockFetch(Data{{project_name.pascalCase()}}Model expected) {
    when(() => fetch(any())).thenAnswer((_) async => expected);
  }

  void mockPush() {
    when(push).thenAnswer((_) => Future.value());
  }
}
