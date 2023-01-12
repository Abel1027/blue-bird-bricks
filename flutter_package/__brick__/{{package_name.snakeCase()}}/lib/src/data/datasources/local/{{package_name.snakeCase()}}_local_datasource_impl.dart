import '../../models/{{package_name.snakeCase()}}_request_model.dart';
import '../{{package_name.snakeCase()}}_datasource.dart';

class {{package_name.pascalCase()}}LocalDatasourceImpl implements {{package_name.pascalCase()}}Datasource {
  const {{package_name.pascalCase()}}LocalDatasourceImpl();

  @override
  Future<void> init({
    required {{package_name.pascalCase()}}RequestModel request,
  }) async {
    print('Implement LOCAL datasource init method');
  }
}
