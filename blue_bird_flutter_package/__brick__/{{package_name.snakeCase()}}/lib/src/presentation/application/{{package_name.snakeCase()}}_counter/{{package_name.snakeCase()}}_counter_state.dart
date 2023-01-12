part of '{{project_name.snakeCase()}}_counter_cubit.dart';

class {{project_name.pascalCase()}}CounterState extends Equatable {
  const {{project_name.pascalCase()}}CounterState({
    required this.count,
  });

  factory {{project_name.pascalCase()}}CounterState.initial() => {{project_name.pascalCase()}}CounterState(
        count: 0,
      );

  final int count;

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
