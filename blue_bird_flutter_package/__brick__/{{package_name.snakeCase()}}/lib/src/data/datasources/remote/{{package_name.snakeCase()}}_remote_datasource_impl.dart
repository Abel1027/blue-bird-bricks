import '../../models/{{package_name.snakeCase()}}_request_model.dart';
import '../{{package_name.snakeCase()}}_datasource.dart';

class {{package_name.pascalCase()}}RemoteDatasourceImpl implements {{package_name.pascalCase()}}Datasource {
  const {{package_name.pascalCase()}}RemoteDatasourceImpl();

  @override
  Future<void> init({
    required {{package_name.pascalCase()}}RequestModel request,
  }) async {
    print('Implement REMOTE datasource init method');
  }
}
