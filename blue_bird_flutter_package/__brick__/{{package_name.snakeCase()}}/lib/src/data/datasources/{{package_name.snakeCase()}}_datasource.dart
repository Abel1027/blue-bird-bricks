import '../models/{{package_name.snakeCase()}}_request_model.dart';

abstract class {{package_name.pascalCase()}}Datasource {
  Future<void> init({
    required {{package_name.pascalCase()}}RequestModel request,
  });
}
