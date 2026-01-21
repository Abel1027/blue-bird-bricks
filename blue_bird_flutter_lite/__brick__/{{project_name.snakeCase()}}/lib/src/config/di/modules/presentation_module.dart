import 'package:injectable/injectable.dart';

/// Module for binding presentation layer dependencies.
/// 
/// This module organizes view models and other presentation layer components.
/// Presentation components depend on use cases from the domain layer.
@module
abstract class PresentationModule {
  // Cubits/Blocs are already annotated with @lazySingleton
  // This module serves as documentation and
  // can be extended for future cubits
  
  // If you need to provide custom configurations for cubits,
  // you can do it here:
  // @lazySingleton
  // {{project_name.pascalCase()}}Cubit get cubit => {{project_name.pascalCase()}}Cubit(
  //   getIt<{{project_name.pascalCase()}}UseCase>(),
  // );
}
