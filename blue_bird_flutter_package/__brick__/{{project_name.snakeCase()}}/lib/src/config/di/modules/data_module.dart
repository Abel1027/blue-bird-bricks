import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/src/data/datasources/contract/{{project_name.snakeCase()}}_datasource.dart';
import 'package:{{project_name.snakeCase()}}/src/data/datasources/local/{{project_name.snakeCase()}}_local_datasource.dart';
import 'package:{{project_name.snakeCase()}}/src/data/datasources/remote/{{project_name.snakeCase()}}_remote_datasource.dart';

/// Module for binding data layer dependencies.
/// 
/// This module provides named instances for local and remote datasources,
/// allowing the repository to inject specific implementations based on need.
@module
abstract class DataModule {
  /// Provides the local datasource implementation.
  /// 
  /// Named binding allows distinguishing between local and remote datasources
  /// when both implement the same abstract interface.
  @Named('local')
  @lazySingleton
  {{project_name.pascalCase()}}Datasource get localDatasource => const {{project_name.pascalCase()}}LocalDatasource();

  /// Provides the remote datasource implementation.
  /// 
  /// Named binding allows distinguishing between local and remote datasources
  /// when both implement the same abstract interface.
  @Named('remote')
  @lazySingleton
  {{project_name.pascalCase()}}Datasource get remoteDatasource => const {{project_name.pascalCase()}}RemoteDatasource();
}
