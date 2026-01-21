import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/src/data/models/data_{{project_name.snakeCase()}}_model.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/entities/{{project_name.snakeCase()}}_entity.dart';

/// Converts domain entities to data models for datasource operations.
@lazySingleton
class {{project_name.pascalCase()}}Mapper {
  Data{{project_name.pascalCase()}}Model map({{project_name.pascalCase()}}Entity model) {
    return Data{{project_name.pascalCase()}}Model(
      name: model.name,
      description: model.description,
    );
  }
}
