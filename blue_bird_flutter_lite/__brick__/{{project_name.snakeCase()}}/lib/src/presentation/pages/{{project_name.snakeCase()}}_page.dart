import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:{{project_name.snakeCase()}}/src/presentation/view_models/{{project_name.snakeCase()}}_cubit.dart';
import 'package:{{project_name.snakeCase()}}/src/presentation/view_models/{{project_name.snakeCase()}}_state.dart';

class {{project_name.pascalCase()}}Page extends StatelessWidget {
  const {{project_name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = GetIt.instance.get<{{project_name.pascalCase()}}Cubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('{{project_name.titleCase()}} Example'),
      ),
      body: BlocBuilder<{{project_name.pascalCase()}}Cubit, {{project_name.pascalCase()}}State>(
        bloc: cubit,
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Name: ${state.name}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: cubit.update,
                  child: const Text('Update'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
