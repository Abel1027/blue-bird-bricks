import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{project_name.snakeCase()}}/src/config/{{project_name.snakeCase()}}_constant.dart';

part '{{project_name.snakeCase()}}_state.freezed.dart';

/// Immutable UI state representing current screen data.
/// Provides copyWith() for easy state updates and initial() factory.
@freezed
abstract class {{project_name.pascalCase()}}State with _${{project_name.pascalCase()}}State {
  const factory {{project_name.pascalCase()}}State({
    required String name,
  }) = _{{project_name.pascalCase()}}State;

  factory {{project_name.pascalCase()}}State.initial() => const {{project_name.pascalCase()}}State(
    name: {{project_name.pascalCase()}}Constant.{{project_name.camelCase()}}InitialName,
  );
}
