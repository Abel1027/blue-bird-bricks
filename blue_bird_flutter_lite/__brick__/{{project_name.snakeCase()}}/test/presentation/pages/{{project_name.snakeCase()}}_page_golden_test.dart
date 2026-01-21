import 'package:alchemist/alchemist.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:{{project_name.snakeCase()}}/src/presentation/pages/{{project_name.snakeCase()}}_page.dart';
import 'package:{{project_name.snakeCase()}}/src/presentation/view_models/{{project_name.snakeCase()}}_cubit.dart';
import 'package:{{project_name.snakeCase()}}/src/presentation/view_models/{{project_name.snakeCase()}}_state.dart';

import '../../config/mock/presentation/mocked_{{project_name.snakeCase()}}_cubit.dart';
import '../../config/test_helper.dart';

void main() {
  group({{project_name.pascalCase()}}Page, () {
    late Mocked{{project_name.pascalCase()}}Cubit mocked{{project_name.pascalCase()}}Cubit;

    const double width = 400;
    const double height = 800;

    setUpAll(() {
      mocked{{project_name.pascalCase()}}Cubit = Mocked{{project_name.pascalCase()}}Cubit();

      GetIt.instance.registerSingleton<{{project_name.pascalCase()}}Cubit>(mocked{{project_name.pascalCase()}}Cubit);
    });

    goldenTest(
      'renders correctly',
      fileName: '{{project_name.snakeCase()}}_page_golden',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
            name: 'initial state',
            child: SizedBox(
              width: width,
              height: height,
              child: Builder(
                builder: (context) {
                  whenListen(
                    mocked{{project_name.pascalCase()}}Cubit,
                    Stream.fromIterable([{{project_name.pascalCase()}}State.initial()]),
                    initialState: {{project_name.pascalCase()}}State.initial(),
                  );

                  return const {{project_name.pascalCase()}}Page().useTestWrapper();
                },
              ),
            ),
          ),
          GoldenTestScenario(
            name: 'update state',
            child: SizedBox(
              width: width,
              height: height,
              child: Builder(
                builder: (context) {
                  whenListen(
                    mocked{{project_name.pascalCase()}}Cubit,
                    Stream.fromIterable([
                      {{project_name.pascalCase()}}State.initial().copyWith(
                        name: 'Updated Name',
                      ),
                    ]),
                    initialState: {{project_name.pascalCase()}}State.initial(),
                  );

                  return const {{project_name.pascalCase()}}Page().useTestWrapper();
                },
              ),
            ),
          ),
        ],
      ),
    );
  });
}
