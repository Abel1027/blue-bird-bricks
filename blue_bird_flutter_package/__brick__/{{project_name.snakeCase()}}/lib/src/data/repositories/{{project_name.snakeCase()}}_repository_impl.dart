import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/src/data/datasources/contract/{{project_name.snakeCase()}}_datasource.dart';
import 'package:{{project_name.snakeCase()}}/src/data/mappers/data_{{project_name.snakeCase()}}_mapper.dart';
import 'package:{{project_name.snakeCase()}}/src/data/mappers/{{project_name.snakeCase()}}_mapper.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/entities/{{project_name.snakeCase()}}_entity.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/repositories/{{project_name.snakeCase()}}_repository.dart';

/// Implements repository contract, coordinating datasources and mappers.
@LazySingleton(as: {{project_name.pascalCase()}}Repository)
class {{project_name.pascalCase()}}RepositoryImpl implements {{project_name.pascalCase()}}Repository {
  const {{project_name.pascalCase()}}RepositoryImpl(
    @Named('local') this._localDatasource,
    @Named('remote') this._remoteDatasource,
    this._entityToDataMapper,
    this._dataToEntityMapper,
  );

  final {{project_name.pascalCase()}}Datasource _localDatasource;
  final {{project_name.pascalCase()}}Datasource _remoteDatasource;
  final {{project_name.pascalCase()}}Mapper _entityToDataMapper;
  final Data{{project_name.pascalCase()}}Mapper _dataToEntityMapper;

  @override
  Future<{{project_name.pascalCase()}}Entity> fetch({bool fromLocal = false}) async {
    // Create a sample entity to convert to data model for the request
    const sampleEntity = {{project_name.pascalCase()}}Entity(
      name: 'Sample Name',
      description: 'Sample Description',
    );
    
    // Convert entity to data model for datasource
    final dataModel = _entityToDataMapper.map(sampleEntity);
    
    // Fetch from appropriate datasource
    final datasource = fromLocal ? _localDatasource : _remoteDatasource;
    final responseData = await datasource.fetch(dataModel);
    
    // Convert data model back to entity
    return _dataToEntityMapper.map(responseData);
  }

  @override
  Future<void> push() async {}
}
