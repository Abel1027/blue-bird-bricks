import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:{{project_name.snakeCase()}}/src/presentation/view_models/{{project_name.snakeCase()}}_cubit.dart';
import 'package:{{project_name.snakeCase()}}/src/presentation/view_models/{{project_name.snakeCase()}}_state.dart';

class Mocked{{project_name.pascalCase()}}Cubit extends Mock implements {{project_name.pascalCase()}}Cubit {
  void mockState({{project_name.pascalCase()}}State expected) {
    when(() => state).thenReturn(expected);
  }

  void mockStream(Stream<{{project_name.pascalCase()}}State> expected) {
    when(() => stream).thenReturn(expected);
  }

  void mockStreamWithInitialState(
    Stream<{{project_name.pascalCase()}}State> expected,
    {{project_name.pascalCase()}}State initialState,
  ) {
    whenListen(this, expected, initialState: initialState);
  }

  void mockUpdate() {
    when(update).thenAnswer((_) => Future.value());
  }
}
