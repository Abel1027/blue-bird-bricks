part of 'feature_example_counter_cubit.dart';

class FeatureExampleCounterState extends Equatable {
  const FeatureExampleCounterState({
    required this.count,
  });

  factory FeatureExampleCounterState.initial() => FeatureExampleCounterState(
        count: 0,
      );

  final int count;

  FeatureExampleCounterState copyWith({
    int? count,
  }) {
    return FeatureExampleCounterState(
      count: count ?? this.count,
    );
  }

  @override
  String toString() => 'FeatureExampleCounterState(count: $count)';

  @override
  List<Object> get props => [count];
}
