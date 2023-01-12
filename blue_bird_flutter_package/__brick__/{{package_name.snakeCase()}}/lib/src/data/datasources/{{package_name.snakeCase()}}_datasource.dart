import '../models/{{project_name.snakeCase()}}_request_model.dart';

abstract class {{project_name.pascalCase()}}Datasource {
  Future<void> init({
    required {{project_name.pascalCase()}}RequestModel request,
  });
}
