# {{project_name.pascalCase()}}

{{project_description}}

## Overview

This is a **multi-package Flutter application** built with **Melos workspace** management, following **Clean Architecture** principles and **Atomic Design** methodology. The project is structured to promote code reusability, maintainability, and scalability through modular packages.

## Project Architecture

### 🏗️ Workspace Structure

This project uses a **monorepo** approach with **Melos** to manage multiple packages:

```
{{project_name.snakeCase()}}/
├── lib/                      # Main application
│   ├── main.dart            # App entry point
│   └── src/
│       └── config/
│           ├── di/          # Dependency injection
│           └── routes/      # App-level routing
├── core/                    # Core utilities & localization
├── design_system/          # UI component library
├── assets/                 # App assets (images, fonts, etc.)
├── test/                   # Application tests
├── pubspec.yaml           # Main app dependencies
└── melos.yaml             # Workspace configuration
```

### 📦 Package Overview

#### 1. **Main App** (`lib/`)
The root application package that orchestrates everything.

**Responsibilities**:
- Application initialization and configuration
- Dependency injection setup
- Global routing configuration
- App theme application
- Feature integration

**Key Components**:
- `main.dart`: Entry point with DI initialization
- `config/di/`: Dependency injection setup using `injectable`
- `config/routes/`: App-level routing with `go_router`

#### 2. **Core Package** (`core/`)
Framework-independent shared utilities and business logic.

**Responsibilities**:
- Internationalization (i18n) and localization (l10n)
- Route constants and navigation helpers
- Shared constants and utilities
- Common interfaces and abstractions

**Features**:
- 🌍 **Localization**: Multi-language support with Flutter's `gen-l10n`
- 🧭 **Route Definitions**: Centralized route names and paths
- 🛠️ **Utilities**: Shared helper functions and extensions

**Structure**:
```
core/
├── lib/
│   ├── core.dart
│   └── src/
│       ├── l10n/           # Localization files
│       └── routes/         # Route constants
└── l10n.yaml              # Localization config
```

#### 3. **Design System Package** (`design_system/`)
UI component library following **Atomic Design** principles.

**Responsibilities**:
- Reusable UI components
- Application theme and styling
- Color palette and typography
- Design tokens

**Atomic Design Hierarchy**:
- **Atoms**: Basic building blocks (buttons, inputs, text)
- **Molecules**: Simple component combinations
- **Organisms**: Complex UI sections

**Structure**:
```
design_system/
├── lib/
│   ├── design_system.dart
│   └── src/
│       ├── config/
│       │   ├── {{project_name.snakeCase()}}_color.dart      # Color palette
│       │   └── {{project_name.snakeCase()}}_theme_data.dart # Theme config
│       └── presentation/
│           ├── atom/       # Basic components
│           ├── molecule/   # Component combinations
│           └── organism/   # Complex sections
└── test/                   # Golden tests for components
```

## Key Technologies

### State Management & Navigation
- **Routing**: `go_router` - Type-safe, declarative routing
- **DI**: `get_it` + `injectable` - Dependency injection

### Code Generation & Build Tools
- **Melos**: Multi-package workspace management
- **build_runner**: Code generation orchestration
- **injectable_generator**: DI code generation

### Localization
- **Flutter Intl**: Built-in l10n support with ARB files
- **flutter_localizations**: Flutter's localization framework

### App Configuration
- **flutter_launcher_icons**: Cross-platform app icons
- **flutter_native_splash**: Native splash screens

### Code Quality
- **very_good_analysis**: Strict linting rules
- **Alchemist**: Golden testing for UI components

## Melos Scripts

Melos provides convenient scripts for common tasks across all packages:

### Development
```bash
# Get dependencies for all packages
melos get

# Clean build artifacts in all packages
melos clean

# Run code generation
melos generate

# Generate localization files
melos l10n
```

### Code Quality
```bash
# Analyze all packages
melos analyze

# Format code in all packages
melos format

# Apply automatic fixes
melos fix
```

### Testing
```bash
# Run tests with coverage
melos test

# Update golden test files
melos update_goldens
```

### App Assets
```bash
# Generate launcher icons
melos generate_icon

# Generate splash screens
melos generate_splash
```

## Routing Architecture

### Route Configuration

The app uses **go_router** for declarative, type-safe routing:

```dart
// Route definitions in core package
abstract class RouteName {
  static const String home = 'home';
  static const String detail = 'detail';
}

abstract class RoutePath {
  static const String home = '/';
  static const String detail = 'detail';
}
```

### Navigation Example

```dart
// Navigate to a route
context.go(RoutePath.detail);

// Navigate with parameters
context.goNamed(RouteName.detail, queryParameters: {'id': '123'});

// Go back
context.pop();
```

### Route Structure

Routes are configured in `lib/src/config/routes/app_router.dart`:

```dart
GoRouter(
  initialLocation: RoutePath.home,
  routes: [
    GoRoute(
      name: RouteName.home,
      path: RoutePath.home,
      builder: (context, state) => const HomePage(),
      routes: [
        // Nested routes
        GoRoute(
          name: RouteName.detail,
          path: RoutePath.detail,
          builder: (context, state) => const DetailPage(),
        ),
      ],
    ),
  ],
);
```

## Dependency Injection

### Setup

The app uses **injectable** with **get_it** for dependency injection:

```dart
// Initialize DI in main.dart
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Configure dependencies
  configure{{project_name.pascalCase()}}Dependencies();
  
  runApp(const MyApp());
}
```

### Registering Dependencies

```dart
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @singleton
  SomeService get service => SomeService();
}
```

### Accessing Dependencies

```dart
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

// Retrieve dependency
final service = getIt<SomeService>();
```

## Localization (i18n)

### Adding Translations

1. Edit ARB files in `core/lib/src/l10n/`:
   - `app_en.arb` (English)
   - `app_es.arb` (Spanish)
   - Add more languages as needed

2. Example ARB entry:
```json
{
  "example": "Example",
  "@example": {
    "description": "Example text"
  }
}
```

3. Generate localization code:
```bash
melos l10n
```

### Using Translations

```dart
import 'package:core/core.dart';

// In a widget
Text(S.of(context)!.example)
```

### Supported Locales

Configure in `MaterialApp`:
```dart
MaterialApp(
  localizationsDelegates: S.localizationsDelegates,
  supportedLocales: S.supportedLocales,
  // ...
)
```

## Theme Configuration

### Defining Theme

Theme is defined in `design_system/lib/src/config/`:

```dart
// Colors
abstract class {{project_name.pascalCase()}}Color {
  static const primary = Color(0xFF6200EE);
  static const secondary = Color(0xFF03DAC6);
  // ...
}

// Theme Data
abstract class {{project_name.pascalCase()}}ThemeData {
  static ThemeData get light => ThemeData(
    colorScheme: ColorScheme.light(
      primary: {{project_name.pascalCase()}}Color.primary,
      // ...
    ),
  );
}
```

### Applying Theme

```dart
MaterialApp(
  theme: {{project_name.pascalCase()}}ThemeData.light,
  // darkTheme: {{project_name.pascalCase()}}ThemeData.dark,
  // ...
)
```

## Design System Usage

### Importing Components

```dart
import 'package:design_system/design_system.dart';

// Use design system components
CustomButton(
  text: 'Click Me',
  onPressed: () {},
)
```

### Creating New Components

Follow **Atomic Design** principles:

1. **Atoms** (smallest components):
```dart
// design_system/lib/src/presentation/atom/custom_button.dart
class CustomButton extends StatelessWidget {
  // Implementation
}
```

2. **Molecules** (combination of atoms):
```dart
// design_system/lib/src/presentation/molecule/login_form.dart
class LoginForm extends StatelessWidget {
  // Uses CustomButton, CustomTextField, etc.
}
```

3. **Organisms** (complex sections):
```dart
// design_system/lib/src/presentation/organism/header.dart
class Header extends StatelessWidget {
  // Uses multiple molecules
}
```

## Testing Strategy

### Running Tests

```bash
# Run all tests with coverage
melos test

# Update golden tests
melos update_goldens
```

### Golden Testing

For design system components:

```dart
import 'package:alchemist/alchemist.dart';

goldenTest(
  'CustomButton renders correctly',
  fileName: 'custom_button',
  builder: () => GoldenTestGroup(
    children: [
      GoldenTestScenario(
        name: 'default',
        child: CustomButton(text: 'Button'),
      ),
    ],
  ),
);
```

## Getting Started

### Prerequisites

- Flutter SDK (>=3.5.0)
- Dart SDK (>=3.5.0)
- Melos CLI

### Installation

1. **Clone the repository**:
```bash
git clone <repository-url>
cd {{project_name.snakeCase()}}
```

2. **Install Melos** (if not already installed):
```bash
dart pub global activate melos
```

3. **Bootstrap the workspace**:
```bash
melos bootstrap
```

4. **Get dependencies**:
```bash
melos get
```

5. **Generate code**:
```bash
melos generate
```

### Running the App

```bash
flutter run
```

Or use your IDE's run configuration.

## Development Workflow

### Adding a New Feature

1. **Create feature in main app or create new package**
2. **Follow Clean Architecture in packages**
3. **Add UI components to design_system if reusable**
4. **Add localization strings to core/l10n**
5. **Write tests**
6. **Run code generation**: `melos generate`
7. **Format code**: `melos format`

### Creating a New Package

```bash
# Create package directory
mkdir packages/my_feature

# Add package structure
# Add dependencies in pubspec.yaml
```

### Code Generation Workflow

1. Make changes to code
2. Run: `melos generate`
3. Verify generated files
4. Commit both source and generated files

## Project Benefits

✅ **Modular Architecture**: Easy to maintain and scale  
✅ **Code Reusability**: Shared packages across features  
✅ **Type Safety**: Strong typing with Dart  
✅ **Internationalization**: Built-in multi-language support  
✅ **Consistent UI**: Design system ensures uniformity  
✅ **Efficient Workflow**: Melos scripts for common tasks  
✅ **Testing**: Comprehensive test coverage with golden tests  
✅ **Team Collaboration**: Clear package boundaries  

## Best Practices

### Package Organization
- Keep packages focused and single-purpose
- Core for shared logic, design_system for UI
- Main app as integration layer

### Dependency Management
- Use workspace dependencies for local packages
- Keep external dependencies minimal
- Version lock for consistency

### Routing
- Centralize route definitions in core
- Use type-safe navigation with go_router
- Keep routing logic in app config

### Theming
- Define all colors in design_system
- Use theme data consistently
- Support both light and dark themes

### Localization
- Add translations for all user-facing text
- Use meaningful keys in ARB files
- Test with different locales

### Code Quality
- Run `melos analyze` before commits
- Use `melos format` to maintain style
- Write tests for all features
- Update golden tests when UI changes

## Folder Structure Reference

```
{{project_name.snakeCase()}}/
│
├── android/                 # Android platform code
├── ios/                     # iOS platform code
├── assets/                  # Application assets
│   ├── images/
│   └── fonts/
│
├── lib/                     # Main application code
│   ├── main.dart
│   └── src/
│       └── config/
│           ├── di/         # Dependency injection
│           └── routes/     # Routing configuration
│
├── core/                    # Core shared package
│   └── lib/
│       ├── core.dart
│       └── src/
│           ├── l10n/       # Localization
│           └── routes/     # Route constants
│
├── design_system/          # UI component library
│   ├── lib/
│   │   ├── design_system.dart
│   │   └── src/
│   │       ├── config/     # Theme, colors
│   │       └── presentation/
│   │           ├── atom/
│   │           ├── molecule/
│   │           └── organism/
│   └── test/               # Golden tests
│
├── test/                   # Application tests
├── pubspec.yaml           # Main dependencies
└── melos.yaml            # Workspace configuration
```

## Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Go Router](https://pub.dev/packages/go_router)
- [Melos](https://melos.invertase.dev/)
- [Injectable](https://pub.dev/packages/injectable)
- [Atomic Design](https://bradfrost.com/blog/post/atomic-web-design/)

## License

This project is part of the Blue Bird Bricks collection.