import 'dart:async';
import 'package:dependencies/dependencies.dart';

/// Base class for dependency handling
abstract class InjectionModule {
  /// Property for access the global service locator
  static GetIt injector = GetIt.asNewInstance();

  /// Method for registering all module dependencies
  FutureOr<void> registerDependencies();
}
