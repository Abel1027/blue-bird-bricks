class {{project_name.pascalCase()}}ResponseModel {
  const {{project_name.pascalCase()}}ResponseModel({
    required this.accessToken,
  });

  final String accessToken;

  static {{project_name.pascalCase()}}ResponseModel fromJson(
    Map<String, dynamic> json,
  ) {
    return {{project_name.pascalCase()}}ResponseModel(
      accessToken: json['access-token'],
    );
  }
}
