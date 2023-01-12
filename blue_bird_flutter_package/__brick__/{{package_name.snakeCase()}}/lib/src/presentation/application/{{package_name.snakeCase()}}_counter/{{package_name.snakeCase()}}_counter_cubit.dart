import 'package:dependencies/dependencies.dart';

part '{{project_name.snakeCase()}}_counter_state.dart';

class {{project_name.pascalCase()}}CounterCubit extends Cubit<{{project_name.pascalCase()}}CounterState> {
  {{project_name.pascalCase()}}CounterCubit() : super({{project_name.pascalCase()}}CounterState.initial());

  void increment() {
    final newState = state.copyWith(
      count: state.count + 1,
    );

    emit(newState);
  }
}
