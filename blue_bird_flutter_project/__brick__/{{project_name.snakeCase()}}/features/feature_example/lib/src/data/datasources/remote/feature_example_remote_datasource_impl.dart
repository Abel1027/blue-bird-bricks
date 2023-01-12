import '../../models/feature_example_request_model.dart';
import '../feature_example_datasource.dart';

class FeatureExampleRemoteDatasourceImpl implements FeatureExampleDatasource {
  const FeatureExampleRemoteDatasourceImpl();

  @override
  Future<void> init({
    required FeatureExampleRequestModel request,
  }) async {
    print('Implement REMOTE datasource init method');
  }
}
