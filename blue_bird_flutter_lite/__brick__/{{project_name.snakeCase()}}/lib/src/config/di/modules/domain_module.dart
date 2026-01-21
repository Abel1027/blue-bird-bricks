import 'package:injectable/injectable.dart';

/// Module for binding domain layer dependencies.
/// 
/// This module organizes use cases and other domain layer components.
/// Use cases depend on repository abstractions, ensuring clean architecture.
@module
abstract class DomainModule {
  // Use cases are already annotated with @lazySingleton
  // This module serves as documentation and
  // can be extended for future use cases
  
  // If you need to provide custom configurations for use cases,
  // you can do it here:
  // @lazySingleton
  // {{project_name.pascalCase()}}UseCase get useCase => {{project_name.pascalCase()}}UseCase(
  //   getIt<{{project_name.pascalCase()}}Repository>(),
  // );
}
