import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/src/config/di/injection.config.dart';

/// Initializes all dependencies for the {{project_name.pascalCase()}} package.
@injectableInit
void configure{{project_name.pascalCase()}}Dependencies(GetIt getIt) {
  getIt.init();
}
