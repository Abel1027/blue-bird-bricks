/// {@template {{project_name.snakeCase()}}_repository}
/// {{{description}}}
/// {@endtemplate}
abstract class {{project_name.pascalCase()}}Repository {
  /// [init] doc
  Future<void> init();

  /// [close] doc
  Future<void> close();
}
