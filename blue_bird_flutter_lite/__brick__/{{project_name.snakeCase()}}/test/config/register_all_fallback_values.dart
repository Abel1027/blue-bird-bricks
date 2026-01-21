import 'package:mocktail/mocktail.dart';

import 'fake/faked.dart';

void registerAllFallbackValues() {
  registerFallbackValue(FakedData{{project_name.pascalCase()}}Model());
  registerFallbackValue(Faked{{project_name.pascalCase()}}Entity());
}
