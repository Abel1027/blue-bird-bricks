import 'package:dependencies/dependencies.dart';

part '{{package_name.snakeCase()}}_counter_state.dart';

class {{package_name.pascalCase()}}CounterCubit extends Cubit<{{package_name.pascalCase()}}CounterState> {
  {{package_name.pascalCase()}}CounterCubit() : super({{package_name.pascalCase()}}CounterState.initial());

  void increment() {
    final newState = state.copyWith(
      count: state.count + 1,
    );

    emit(newState);
  }
}
