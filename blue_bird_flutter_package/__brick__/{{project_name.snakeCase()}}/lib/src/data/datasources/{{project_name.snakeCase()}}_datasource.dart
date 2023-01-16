import 'package:{{project_name.snakeCase()}}/src/data/models/{{project_name.snakeCase()}}_request_model.dart';

/// {@template {{project_name.snakeCase()}}_datasource}
/// {{{description}}}
/// {@endtemplate}
abstract class {{project_name.pascalCase()}}Datasource {
  /// [init] doc  
  Future<void> init({
    required {{project_name.pascalCase()}}RequestModel request,
  });

  /// [close] doc
  Future<void> close();
}
