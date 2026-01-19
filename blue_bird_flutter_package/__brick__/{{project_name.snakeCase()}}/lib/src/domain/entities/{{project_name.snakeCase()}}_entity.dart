import 'package:freezed_annotation/freezed_annotation.dart';

part '{{project_name.snakeCase()}}_entity.freezed.dart';

@freezed
abstract class {{project_name.pascalCase()}}Entity with _${{project_name.pascalCase()}}Entity {
  const factory {{project_name.pascalCase()}}Entity({
    required String name,
    required String description,
  }) = _{{project_name.pascalCase()}}Entity;
}
