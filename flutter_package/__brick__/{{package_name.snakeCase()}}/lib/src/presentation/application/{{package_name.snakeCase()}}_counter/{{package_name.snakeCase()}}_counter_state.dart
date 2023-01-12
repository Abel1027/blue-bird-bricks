part of '{{package_name.snakeCase()}}_counter_cubit.dart';

class {{package_name.pascalCase()}}CounterState extends Equatable {
  const {{package_name.pascalCase()}}CounterState({
    required this.count,
  });

  factory {{package_name.pascalCase()}}CounterState.initial() => {{package_name.pascalCase()}}CounterState(
        count: 0,
      );

  final int count;

  {{package_name.pascalCase()}}CounterState copyWith({
    int? count,
  }) {
    return {{package_name.pascalCase()}}CounterState(
      count: count ?? this.count,
    );
  }

  @override
  String toString() => '{{package_name.pascalCase()}}CounterState(count: $count)';

  @override
  List<Object> get props => [count];
}
