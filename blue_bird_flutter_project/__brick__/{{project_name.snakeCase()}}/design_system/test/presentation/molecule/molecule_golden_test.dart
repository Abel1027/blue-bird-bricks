import 'package:alchemist/alchemist.dart';
import 'package:design_system/src/presentation/molecule/molecule.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(Molecule, () {
    goldenTest(
      'renders correctly',
      fileName: 'molecule_golden',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
            name: 'initial',
            child: Molecule(
              title: 'Hello, Molecule!',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  });
}
