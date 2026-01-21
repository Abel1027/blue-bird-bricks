import 'package:mocktail/mocktail.dart';
import 'package:{{project_name.snakeCase()}}/src/data/datasources/remote/{{project_name.snakeCase()}}_remote_datasource.dart';
import 'package:{{project_name.snakeCase()}}/src/data/models/data_{{project_name.snakeCase()}}_model.dart';

class Mocked{{project_name.pascalCase()}}RemoteDatasource extends Mock
    implements {{project_name.pascalCase()}}RemoteDatasource {
  void mockFetch(Data{{project_name.pascalCase()}}Model expected) {
    when(() => fetch(any())).thenAnswer((_) async => expected);
  }

  void mockPush() {
    when(push).thenAnswer((_) => Future.value());
  }
}
