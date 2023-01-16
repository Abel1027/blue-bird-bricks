part of '{{project_name.snakeCase()}}_counter_cubit.dart';

/// {@template {{project_name.snakeCase()}}_counter_state}
/// {{{description}}}
/// {@endtemplate}
class {{project_name.pascalCase()}}CounterState extends Equatable {
  /// {@macro {{project_name.snakeCase()}}_counter_state}
  const {{project_name.pascalCase()}}CounterState({
    required this.count,
  });

  /// [{{project_name.pascalCase()}}CounterState.initial] doc
  factory {{project_name.pascalCase()}}CounterState.initial() => const {{project_name.pascalCase()}}CounterState(
        count: 0,
      );

  /// [count] doc
  final int count;

  /// [copyWith] doc
  {{project_name.pascalCase()}}CounterState copyWith({
    int? count,
  }) {
    return {{project_name.pascalCase()}}CounterState(
      count: count ?? this.count,
    );
  }

  @override
  String toString() => '{{project_name.pascalCase()}}CounterState(count: $count)';

  @override
  List<Object> get props => [count];
}
