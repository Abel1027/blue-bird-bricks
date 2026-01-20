import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/src/data/models/data_{{project_name.snakeCase()}}_model.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/entities/{{project_name.snakeCase()}}_entity.dart';

/// Converts data models to domain entities from datasource responses.
@lazySingleton
class Data{{project_name.pascalCase()}}Mapper {
  {{project_name.pascalCase()}}Entity map(Data{{project_name.pascalCase()}}Model entity) {
    return {{project_name.pascalCase()}}Entity(
      name: entity.name,
      description: entity.description,
    );
  }
}
