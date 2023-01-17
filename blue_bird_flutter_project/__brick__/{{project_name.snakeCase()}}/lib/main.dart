import 'package:dependencies/dependencies.dart';

void main() {
  runApp(const MyApp());
}

/// {@template my_app}
/// {{{description}}}
/// {@endtemplate}
class MyApp extends StatelessWidget {
  /// {@macro my_app}
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeDatas.light,
      home: const SizedBox.shrink(),
      localizationsDelegates: S.localizationsDelegates,
      supportedLocales: S.supportedLocales,
    );
  }
}
