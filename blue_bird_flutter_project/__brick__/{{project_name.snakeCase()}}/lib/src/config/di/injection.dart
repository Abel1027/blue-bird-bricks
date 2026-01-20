import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/src/config/di/injection.config.dart';

/// Global GetIt instance for dependency injection
final getIt = GetIt.instance;

/// Initializes all dependencies for the {{project_name.pascalCase()}} project.
@injectableInit
void configure{{project_name.pascalCase()}}Dependencies() {
  getIt.init();

  // Initialize package dependencies using the same GetIt instance
  // Example:
  // configureYourPackageDependencies(getIt);
}
