import 'package:alchemist/alchemist.dart';
import 'package:design_system/src/presentation/atom/atom.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(Atom, () {
    goldenTest(
      'renders correctly',
      fileName: 'atom_golden',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
            name: 'initial',
            child: const Atom(
              text: 'Hello, Atom!',
            ),
          ),
        ],
      ),
    );
  });
}
