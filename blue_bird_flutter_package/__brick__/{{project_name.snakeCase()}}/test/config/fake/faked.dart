import 'package:flutter_test/flutter_test.dart';
import 'package:{{project_name.snakeCase()}}/src/data/models/data_{{project_name.snakeCase()}}_model.dart';
import 'package:{{project_name.snakeCase()}}/src/domain/entities/{{project_name.snakeCase()}}_entity.dart';

class FakedData{{project_name.pascalCase()}}Model extends Fake implements Data{{project_name.pascalCase()}}Model {}

class Faked{{project_name.pascalCase()}}Entity extends Fake implements {{project_name.pascalCase()}}Entity {}
