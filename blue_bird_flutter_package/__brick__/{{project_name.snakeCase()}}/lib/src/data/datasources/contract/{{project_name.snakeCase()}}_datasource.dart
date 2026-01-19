import 'package:{{project_name.snakeCase()}}/src/data/models/data_{{project_name.snakeCase()}}_model.dart';

/// Abstract interface for datasource implementations (ex: local/remote).
abstract class {{project_name.pascalCase()}}Datasource {
  const {{project_name.pascalCase()}}Datasource();

  Future<Data{{project_name.pascalCase()}}Model> fetch(Data{{project_name.pascalCase()}}Model model);

  Future<void> push();
}
