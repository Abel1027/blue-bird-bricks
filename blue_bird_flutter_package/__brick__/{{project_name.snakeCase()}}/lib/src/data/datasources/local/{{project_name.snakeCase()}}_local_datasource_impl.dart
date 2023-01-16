import 'dart:developer';

import 'package:{{project_name.snakeCase()}}/src/data/datasources/{{project_name.snakeCase()}}_datasource.dart';
import 'package:{{project_name.snakeCase()}}/src/data/models/{{project_name.snakeCase()}}_request_model.dart';

/// {@template {{project_name.snakeCase()}}_local_datasource_impl}
/// {{{description}}}
/// {@endtemplate}
class {{project_name.pascalCase()}}LocalDatasourceImpl implements {{project_name.pascalCase()}}Datasource {
  /// {@macro {{project_name.snakeCase()}}_local_datasource_impl}
  const {{project_name.pascalCase()}}LocalDatasourceImpl();

  @override
  Future<void> init({
    required {{project_name.pascalCase()}}RequestModel request,
  }) async {
    log('Implement LOCAL datasource init method');
  }

  @override
  Future<void> close() async {
    log('Implement LOCAL datasource close method');
  }
}
