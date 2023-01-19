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
      home: const _HomePage(),
      localizationsDelegates: S.localizationsDelegates,
      supportedLocales: S.supportedLocales,
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context)!.helloBlueBird),
      ),
      body: Center(
        child: Text(S.of(context)!.helloBlueBird),
      ),
    );
  }
}
