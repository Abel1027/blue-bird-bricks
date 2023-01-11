import '../../models/feature_example_request_model.dart';
import '../feature_example_datasource.dart';

class FeatureExampleLocalDatasourceImpl implements FeatureExampleDatasource {
  const FeatureExampleLocalDatasourceImpl();

  @override
  Future<void> init({
    required FeatureExampleRequestModel request,
  }) async {
    print('Implement LOCAL datasource init method');
  }
}
