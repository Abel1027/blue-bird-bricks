import 'package:{{project_name.snakeCase()}}/src/data/datasources/contract/{{project_name.snakeCase()}}_datasource.dart';
import 'package:{{project_name.snakeCase()}}/src/data/models/data_{{project_name.snakeCase()}}_model.dart';

/// Handles remote data operations (REST API, GraphQL, WebSocket).
/// Implements {{project_name.pascalCase()}}Datasource and is injected as @Named('remote').
class {{project_name.pascalCase()}}RemoteDatasource implements {{project_name.pascalCase()}}Datasource {
  const {{project_name.pascalCase()}}RemoteDatasource();

  @override
  Future<Data{{project_name.pascalCase()}}Model> fetch(Data{{project_name.pascalCase()}}Model model) async {
    // simulate payload for request
    final json = model.toJson();

    // simulate parsing response
    final responseModel = Data{{project_name.pascalCase()}}Model.fromJson(json);

    return responseModel;
  }

  @override
  Future<void> push() async {}
}
