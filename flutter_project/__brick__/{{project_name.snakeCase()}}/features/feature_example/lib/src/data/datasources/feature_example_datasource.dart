import '../models/feature_example_request_model.dart';

abstract class FeatureExampleDatasource {
  Future<void> init({
    required FeatureExampleRequestModel request,
  });
}
