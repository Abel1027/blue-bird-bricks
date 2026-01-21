import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/src/config/{{project_name.snakeCase()}}_theme_data.dart';
import 'package:{{project_name.snakeCase()}}/src/config/l10n/generated/app_localizations.dart';

class TestWrapper extends StatelessWidget {
  const TestWrapper({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: {{project_name.pascalCase()}}ThemeData.light,
      localizationsDelegates: S.localizationsDelegates,
      supportedLocales: S.supportedLocales,
      home: Scaffold(body: child),
    );
  }
}

extension TestWrapperExtension on Widget {
  Widget useTestWrapper() {
    return TestWrapper(child: this);
  }
}
