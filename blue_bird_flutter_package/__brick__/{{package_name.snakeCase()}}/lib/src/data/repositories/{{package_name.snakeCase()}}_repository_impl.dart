import '../../domain/repositories/{{project_name.snakeCase()}}_respository.dart';

class {{project_name.pascalCase()}}RepositoryImpl implements {{project_name.pascalCase()}}Repository {
  const {{project_name.pascalCase()}}RepositoryImpl();

  @override
  Future<void> init() async {
    print('Implement method');
  }
}
