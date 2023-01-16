{{#in_project}}import 'package:dependencies/dependencies.dart';{{/in_project}}{{^in_project}}import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';{{/in_project}}

part '{{project_name.snakeCase()}}_counter_state.dart';

/// {@template {{project_name.snakeCase()}}_counter_cubit}
/// {{{description}}}
/// {@endtemplate}
class {{project_name.pascalCase()}}CounterCubit extends Cubit<{{project_name.pascalCase()}}CounterState> {
  /// {@macro {{project_name.snakeCase()}}_counter_cubit}
  {{project_name.pascalCase()}}CounterCubit() : super({{project_name.pascalCase()}}CounterState.initial());

  /// [increment] doc
  void increment() {
    final newState = state.copyWith(
      count: state.count + 1,
    );

    emit(newState);
  }
}
