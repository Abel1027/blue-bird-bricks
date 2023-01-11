import 'dart:async';
import 'package:dependencies/dependencies.dart';

class TPAProvider implements InjectionModule {
  static GetIt tpaGetIt = InjectionModule.injector;

  @override
  FutureOr<void> registerDependencies() {
    _getItThirdPartyLibraries();
    _getItBaseUrlSetup();
    _getItDatasourcesSetup();
    _getItRepositoriesSetup();
    _getItUsecasesSetup();
    _getItCubitsSetup();
    _getItOthersSetup();
  }

  /// THIRD PARTY LIBRARIES
  void _getItThirdPartyLibraries() {}

  /// ENDPOINTS BASE URL
  void _getItBaseUrlSetup() {}

  /// DATA SOURCES
  void _getItDatasourcesSetup() {}

  /// REPOSITORIES
  void _getItRepositoriesSetup() {}

  /// USE CASES
  void _getItUsecasesSetup() {}

  /// BLOCS + CUBITS
  void _getItCubitsSetup() {}

  /// OTHERS
  void _getItOthersSetup() {}
}
