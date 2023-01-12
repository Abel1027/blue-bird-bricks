class {{package_name.pascalCase()}}RequestModel {
  const {{package_name.pascalCase()}}RequestModel({
    required this.token,
  });

  final String token;

  Map<String, dynamic> toJson() {
    return {
      'token': token,
    };
  }
}
