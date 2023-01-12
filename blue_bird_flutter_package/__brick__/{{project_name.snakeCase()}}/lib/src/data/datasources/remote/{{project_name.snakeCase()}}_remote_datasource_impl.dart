import '../../models/{{project_name.snakeCase()}}_request_model.dart';
import '../{{project_name.snakeCase()}}_datasource.dart';

class {{project_name.pascalCase()}}RemoteDatasourceImpl implements {{project_name.pascalCase()}}Datasource {
  const {{project_name.pascalCase()}}RemoteDatasourceImpl();

  @override
  Future<void> init({
    required {{project_name.pascalCase()}}RequestModel request,
  }) async {
    print('Implement REMOTE datasource init method');
  }
}
