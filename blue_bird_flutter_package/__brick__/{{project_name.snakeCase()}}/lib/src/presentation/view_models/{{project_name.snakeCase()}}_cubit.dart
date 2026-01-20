import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/use_cases/{{project_name.snakeCase()}}_use_case.dart';
import 'package:{{project_name.snakeCase()}}/src/presentation/view_models/{{project_name.snakeCase()}}_state.dart';

/// Manages UI state and handles user interactions.
/// Calls use cases for business logic, emits states to update UI.
/// Used by widgets via BlocBuilder/BlocListener.
@singleton
class {{project_name.pascalCase()}}Cubit extends Cubit<{{project_name.pascalCase()}}State> {
  {{project_name.pascalCase()}}Cubit(this._useCase) : super({{project_name.pascalCase()}}State.initial());

  final {{project_name.pascalCase()}}UseCase _useCase;
  
  Future<void> update() async {
    final entity = await _useCase.call();

    final newState = state.copyWith(
      name: entity.name,
    );

    emit(newState);
  }
}
