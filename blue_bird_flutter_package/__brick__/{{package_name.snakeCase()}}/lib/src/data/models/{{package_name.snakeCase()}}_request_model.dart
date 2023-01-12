class {{project_name.pascalCase()}}RequestModel {
  const {{project_name.pascalCase()}}RequestModel({
    required this.token,
  });

  final String token;

  Map<String, dynamic> toJson() {
    return {
      'token': token,
    };
  }
}
