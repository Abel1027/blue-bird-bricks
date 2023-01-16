/// {@template {{project_name.snakeCase()}}_response_model}
/// {{{description}}}
/// {@endtemplate}
class {{project_name.pascalCase()}}ResponseModel {
  /// {@macro {{project_name.snakeCase()}}_response_model}
  const {{project_name.pascalCase()}}ResponseModel({
    required this.accessToken,
  });

  /// [accessToken] doc
  final String accessToken;

  /// [fromJson] doc
  {{project_name.pascalCase()}}ResponseModel fromJson(
    Map<String, dynamic> json,
  ) {
    return {{project_name.pascalCase()}}ResponseModel(
      accessToken: json['access-token'] as String,
    );
  }
}
