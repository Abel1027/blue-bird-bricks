import 'dart:developer';

import 'package:{{project_name.snakeCase()}}/src/domain/repositories/{{project_name.snakeCase()}}_respository.dart';

/// {@template {{project_name.snakeCase()}}_repository_impl}
/// {{{description}}}
/// {@endtemplate}
class {{project_name.pascalCase()}}RepositoryImpl implements {{project_name.pascalCase()}}Repository {
  /// {@macro {{project_name.snakeCase()}}_repository_impl}
  const {{project_name.pascalCase()}}RepositoryImpl();

  @override
  Future<void> init() async {
    log('Implement init method');
  }

  @override
  Future<void> close() async {
    log('Implement close method');
  }
}
