class {{package_name.pascalCase()}}ResponseModel {
  const {{package_name.pascalCase()}}ResponseModel({
    required this.accessToken,
  });

  final String accessToken;

  static {{package_name.pascalCase()}}ResponseModel fromJson(
    Map<String, dynamic> json,
  ) {
    return {{package_name.pascalCase()}}ResponseModel(
      accessToken: json['access-token'],
    );
  }
}
