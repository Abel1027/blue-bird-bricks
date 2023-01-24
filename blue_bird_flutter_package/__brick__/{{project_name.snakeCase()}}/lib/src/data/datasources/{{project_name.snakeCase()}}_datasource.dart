import 'package:{{project_name.snakeCase()}}/src/data/models/{{project_name.snakeCase()}}_request_model.dart';

/// [{{project_name.pascalCase()}}Datasource] doc
abstract class {{project_name.pascalCase()}}Datasource {
  /// [init] doc  
  Future<void> init({
    required {{project_name.pascalCase()}}RequestModel request,
  });

  /// [close] doc
  Future<void> close();
}
