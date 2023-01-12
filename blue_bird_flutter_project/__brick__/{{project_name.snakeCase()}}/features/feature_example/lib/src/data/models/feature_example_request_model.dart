class FeatureExampleRequestModel {
  const FeatureExampleRequestModel({
    required this.token,
  });

  final String token;

  Map<String, dynamic> toJson() {
    return {
      'token': token,
    };
  }
}
