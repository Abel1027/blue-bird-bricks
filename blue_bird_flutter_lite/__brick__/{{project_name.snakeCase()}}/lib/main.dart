import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:{{project_name.snakeCase()}}/src/config/di/injection.dart';
import 'package:{{project_name.snakeCase()}}/src/config/l10n/generated/app_localizations.dart';
import 'package:{{project_name.snakeCase()}}/src/config/routes/app_router.dart';
import 'package:{{project_name.snakeCase()}}/src/config/routes/route_path.dart';
import 'package:{{project_name.snakeCase()}}/src/config/{{project_name.snakeCase()}}_theme_data.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configure{{project_name.pascalCase()}}Dependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: {{project_name.pascalCase()}}ThemeData.light,
      routerConfig: AppRouter.router,
      localizationsDelegates: S.localizationsDelegates,
      supportedLocales: S.supportedLocales,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context)!.example),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go(RoutePath.detail),
          child: const Text('Go to Details'),
        ),
      ),
    );
  }
}
