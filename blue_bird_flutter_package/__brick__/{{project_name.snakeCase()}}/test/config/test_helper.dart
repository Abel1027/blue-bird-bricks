import 'package:flutter/material.dart';

class TestWrapper extends StatelessWidget {
  const TestWrapper({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(), // replace with your app's theme
      localizationsDelegates: const [
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ], // replace with your app's localization delegates
      supportedLocales: const [
        Locale('en', 'UK'),
      ], // replace with your app's supported locales
      home: Scaffold(body: child),
    );
  }
}

extension TestWrapperExtension on Widget {
  Widget useTestWrapper() {
    return TestWrapper(child: this);
  }
}
