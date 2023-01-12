import 'package:dependencies/dependencies.dart';

part 'feature_example_counter_state.dart';

class FeatureExampleCounterCubit extends Cubit<FeatureExampleCounterState> {
  FeatureExampleCounterCubit() : super(FeatureExampleCounterState.initial());

  void increment() {
    final newState = state.copyWith(
      count: state.count + 1,
    );

    emit(newState);
  }
}
