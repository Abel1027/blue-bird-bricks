class FeatureExampleResponseModel {
  const FeatureExampleResponseModel({
    required this.accessToken,
  });

  final String accessToken;

  static FeatureExampleResponseModel fromJson(
    Map<String, dynamic> json,
  ) {
    return FeatureExampleResponseModel(
      accessToken: json['access-token'],
    );
  }
}
