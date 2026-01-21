import 'package:go_router/go_router.dart';
import 'package:{{project_name.snakeCase()}}/main.dart';
import 'package:{{project_name.snakeCase()}}/src/config/routes/route_name.dart';
import 'package:{{project_name.snakeCase()}}/src/config/routes/route_path.dart';
import 'package:{{project_name.snakeCase()}}/src/presentation/pages/{{project_name.snakeCase()}}_page.dart';

/// Global router configuration for the application
abstract class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: RoutePath.home,
    routes: [
      GoRoute(
        name: RouteName.home,
        path: RoutePath.home,
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            name: RouteName.detail,
            path: RoutePath.detail,
            builder: (context, state) => const {{project_name.pascalCase()}}Page(),
          ),
        ],
      ),
    ],
  );
}
