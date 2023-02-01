import 'dart:async';
{{#in_project}}import 'package:dependencies/dependencies.dart';{{/in_project}}{{^in_project}}import 'package:get_it/get_it.dart';{{/in_project}}

/// [{{project_name.pascalCase()}}Provider] doc
class {{project_name.pascalCase()}}Provider {{#in_project}}implements InjectionModule {{/in_project}}{{^in_project}}{{/in_project}}{
  /// [{{project_name.camelCase()}}GetIt] doc
  {{#in_project}}static GetIt {{project_name.camelCase()}}GetIt = InjectionModule.injector;{{/in_project}}{{^in_project}}static GetIt {{project_name.camelCase()}}GetIt = GetIt.asNewInstance();{{/in_project}}

  /// [registerDependencies] doc
  {{#in_project}}@override
  FutureOr<void> registerDependencies() {
  {{/in_project}}{{^in_project}}FutureOr<void> registerDependencies() {
  {{/in_project}}_getItThirdPartyLibraries();
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
