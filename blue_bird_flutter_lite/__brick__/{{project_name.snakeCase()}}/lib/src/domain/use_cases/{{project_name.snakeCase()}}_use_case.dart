import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/entities/{{project_name.snakeCase()}}_entity.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/repositories/{{project_name.snakeCase()}}_repository.dart';

/// Encapsulates business logic for a specific use case.
/// Called by presentation layer (Cubit), uses repository for data operations.
/// Returns domain entities, framework-independent and easily testable.
@lazySingleton
class {{project_name.pascalCase()}}UseCase {
  {{project_name.pascalCase()}}UseCase(
    this._repository,
  );

  final {{project_name.pascalCase()}}Repository _repository;

  Future<{{project_name.pascalCase()}}Entity> call() async {
    return _repository.fetch(fromLocal: true);
  }
}
