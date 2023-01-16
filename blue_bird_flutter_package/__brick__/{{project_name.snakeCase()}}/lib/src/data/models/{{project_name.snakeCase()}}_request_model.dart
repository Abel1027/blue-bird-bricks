/// {@template {{project_name.snakeCase()}}_request_model}
/// {{{description}}}
/// {@endtemplate}
class {{project_name.pascalCase()}}RequestModel {
  /// {@macro {{project_name.snakeCase()}}_request_model}
  const {{project_name.pascalCase()}}RequestModel({
    required this.token,
  });

  /// [token] doc
  final String token;

  /// [toJson] doc
  Map<String, dynamic> toJson() {
    return {
      'token': token,
    };
  }
}
