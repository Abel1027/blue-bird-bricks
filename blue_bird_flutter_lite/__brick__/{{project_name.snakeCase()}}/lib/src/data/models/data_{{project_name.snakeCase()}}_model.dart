import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_{{project_name.snakeCase()}}_model.freezed.dart';
part 'data_{{project_name.snakeCase()}}_model.g.dart';

@freezed
abstract class Data{{project_name.pascalCase()}}Model with _$Data{{project_name.pascalCase()}}Model {
  const factory Data{{project_name.pascalCase()}}Model({
    required String name,
    required String description,
  }) = _Data{{project_name.pascalCase()}}Model;

  factory Data{{project_name.pascalCase()}}Model.fromJson(Map<String, Object?> json) =>
      _$Data{{project_name.pascalCase()}}ModelFromJson(json);
}
