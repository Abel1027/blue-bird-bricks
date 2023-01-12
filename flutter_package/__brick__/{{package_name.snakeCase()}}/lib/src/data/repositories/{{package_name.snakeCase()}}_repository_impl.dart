import '../../domain/repositories/{{package_name.snakeCase()}}_respository.dart';

class {{package_name.pascalCase()}}RepositoryImpl implements {{package_name.pascalCase()}}Repository {
  const {{package_name.pascalCase()}}RepositoryImpl();

  @override
  Future<void> init() async {
    print('Implement method');
  }
}
