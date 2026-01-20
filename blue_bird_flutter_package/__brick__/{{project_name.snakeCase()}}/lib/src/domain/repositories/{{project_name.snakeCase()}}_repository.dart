import 'package:{{project_name.snakeCase()}}/src/domain/entities/{{project_name.snakeCase()}}_entity.dart';

/// Domain repository contract defining data operations interface.
/// Used by use cases, works with domain entities only.
abstract class {{project_name.pascalCase()}}Repository {
  const {{project_name.pascalCase()}}Repository();

  Future<{{project_name.pascalCase()}}Entity> fetch({bool fromLocal = false});

  Future<void> push();
}
