import 'package:alchemist/alchemist.dart';
import 'package:design_system/src/presentation/organism/organism.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(Organism, () {
    goldenTest(
      'renders correctly',
      fileName: 'organism_golden',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
            name: 'initial',
            child: const Organism(),
          ),
        ],
      ),
    );
  });
}
