import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/entities/{{project_name.snakeCase()}}_entity.dart';
import 'package:{{project_name.snakeCase()}}/src/presentation/view_models/{{project_name.snakeCase()}}_cubit.dart';
import 'package:{{project_name.snakeCase()}}/src/presentation/view_models/{{project_name.snakeCase()}}_state.dart';

import '../../config/mock/domain/mocked_{{project_name.snakeCase()}}_use_case.dart';

void main() {
  group({{project_name.pascalCase()}}Cubit, () {
    late Mocked{{project_name.pascalCase()}}UseCase mocked{{project_name.pascalCase()}}UseCase;
    late {{project_name.pascalCase()}}Cubit cubit;

    setUp(() {
      mocked{{project_name.pascalCase()}}UseCase = Mocked{{project_name.pascalCase()}}UseCase();

      cubit = {{project_name.pascalCase()}}Cubit(
        mocked{{project_name.pascalCase()}}UseCase,
      );
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is correct', () {
      expect(cubit.state, equals({{project_name.pascalCase()}}State.initial()));
    });

    group('update', () {
      blocTest<{{project_name.pascalCase()}}Cubit, {{project_name.pascalCase()}}State>(
        'should update name in state',
        build: () {
          mocked{{project_name.pascalCase()}}UseCase.mock(
            const {{project_name.pascalCase()}}Entity(
              name: 'Updated Name',
              description: 'Description',
            ),
          );

          return cubit;
        },
        act: (cubit) => cubit.update(),
        expect: () => [
          {{project_name.pascalCase()}}State.initial().copyWith(
            name: 'Updated Name',
          ),
        ],
        verify: (_) {
          verifyInOrder([
            () => mocked{{project_name.pascalCase()}}UseCase.call(),
          ]);
        },
      );
    });
  });
}
